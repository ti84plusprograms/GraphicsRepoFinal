#include "Common.h"
#include "OpenGLCommon.h"
#include "OpenGLMarkerObjects.h"
#include "OpenGLBgEffect.h"
#include "OpenGLMesh.h"
#include "OpenGLViewer.h"
#include "OpenGLWindow.h"
#include "TinyObjLoader.h"
#include "OpenGLSkybox.h"
#include <algorithm>
#include <iostream>
#include <random>
#include <unordered_set>
#include <vector>
#include <string>

#ifndef __Main_cpp__
#define __Main_cpp__

#ifdef __APPLE__
#define CLOCKS_PER_SEC 100000
#endif

class MyDriver : public OpenGLViewer
{
    std::vector<OpenGLTriangleMesh *> mesh_object_array;
    OpenGLBgEffect *bgEffect = nullptr;
    OpenGLSkybox *skybox = nullptr;
    std::vector<OpenGLTriangleMesh*> leaves;
    OpenGLTriangleMesh *tree = nullptr;
    std::vector<Vector3f> initial_positions; // Add this as a class member to store initial positions
    clock_t startTime;

public:
    virtual void Initialize()
    {
        draw_axes = false;
        startTime = clock();
        OpenGLViewer::Initialize();
    }

    virtual void Initialize_Data()
    {
        //// Load all the shaders you need for the scene 
        //// In the function call of Add_Shader_From_File(), we specify three names: 
        //// (1) vertex shader file name
        //// (2) fragment shader file name
        //// (3) shader name used in the shader library
        //// When we bind a shader to an object, we implement it as follows:
        //// object->Add_Shader_Program(OpenGLShaderLibrary::Get_Shader("shader_name"));
        //// Here "shader_name" needs to be one of the shader names you created previously with Add_Shader_From_File()

        OpenGLShaderLibrary::Instance()->Add_Shader_From_File("shaders/basic.vert", "shaders/basic.frag", "basic");
        OpenGLShaderLibrary::Instance()->Add_Shader_From_File("shaders/basic.vert", "shaders/environment.frag", "environment");
        OpenGLShaderLibrary::Instance()->Add_Shader_From_File("shaders/stars.vert", "shaders/stars.frag", "stars");
        OpenGLShaderLibrary::Instance()->Add_Shader_From_File("shaders/basic.vert", "shaders/alphablend.frag", "blend");
        OpenGLShaderLibrary::Instance()->Add_Shader_From_File("shaders/billboard.vert", "shaders/alphablend.frag", "billboard");
        OpenGLShaderLibrary::Instance()->Add_Shader_From_File("shaders/terrain.vert", "shaders/terrain.frag", "terrain");
        OpenGLShaderLibrary::Instance()->Add_Shader_From_File("shaders/skybox.vert", "shaders/skybox.frag", "skybox");

        //// Load all the textures you need for the scene
        //// In the function call of Add_Shader_From_File(), we specify two names:
        //// (1) the texture's file name
        //// (2) the texture used in the texture library
        //// When we bind a texture to an object, we implement it as follows:
        //// object->Add_Texture("tex_sampler", OpenGLTextureLibrary::Get_Texture("tex_name"));
        //// Here "tex_sampler" is the name of the texture sampler2D you used in your shader, and
        //// "tex_name" needs to be one of the texture names you created previously with Add_Texture_From_File()

        OpenGLTextureLibrary::Instance()->Add_Texture_From_File("tex/earth_color.png", "sphere_color");
        OpenGLTextureLibrary::Instance()->Add_Texture_From_File("tex/earth_normal.png", "sphere_normal");
        OpenGLTextureLibrary::Instance()->Add_Texture_From_File("tex/bunny_color.jpg", "bunny_color");
        OpenGLTextureLibrary::Instance()->Add_Texture_From_File("tex/bunny_normal.png", "bunny_normal");
        OpenGLTextureLibrary::Instance()->Add_Texture_From_File("tex/window.png", "window_color");
        OpenGLTextureLibrary::Instance()->Add_Texture_From_File("tex/buzz_color.png", "buzz_color");
        OpenGLTextureLibrary::Instance()->Add_Texture_From_File("tex/star.png", "star_color");

        //// Add all the lights you need for the scene (no more than 4 lights)
        //// The four parameters are position, ambient, diffuse, and specular.
        //// The lights you declared here will be synchronized to all shaders in uniform lights.
        //// You may access these lights using lt[0].pos, lt[1].amb, lt[1].dif, etc.
        //// You can also create your own lights by directly declaring them in a shader without using Add_Light().
        //// Here we declared three default lights for you. Feel free to add/delete/change them at your will.

        opengl_window->Add_Light(Vector3f(3, 1, 3), Vector3f(0.1, 0.1, 0.1), Vector3f(1, 1, 1), Vector3f(0.5, 0.5, 0.5)); 
        opengl_window->Add_Light(Vector3f(0, 0, -5), Vector3f(0.1, 0.1, 0.1), Vector3f(0.9, 0.9, 0.9), Vector3f(0.5, 0.5, 0.5));
        opengl_window->Add_Light(Vector3f(-5, 1, 3), Vector3f(0.1, 0.1, 0.1), Vector3f(0.9, 0.9, 0.9), Vector3f(0.5, 0.5, 0.5));


        // Our background code goes here
        //// Background Option (3): Sky box
        //// Here we provide a default implementation of a sky box; customize it for your own sky box

        {
            // from https://www.humus.name/index.php?page=Textures
            const std::vector<std::string> cubemap_files{
                "cubemap/posx.jpg",     //// + X
                "cubemap/negx.jpg",     //// - X
                "cubemap/posy.jpg",     //// + Y
                "cubemap/negy.jpg",     //// - Y
                "cubemap/posz.jpg",     //// + Z
                "cubemap/negz.jpg",     //// - Z 
            };
            OpenGLTextureLibrary::Instance()->Add_CubeMap_From_Files(cubemap_files, "cube_map");

            skybox = Add_Interactive_Object<OpenGLSkybox>();
            skybox->Add_Shader_Program(OpenGLShaderLibrary::Get_Shader("skybox"));
            skybox->Initialize();
        }

        tree = Add_Obj_Mesh_Object("obj/tree.obj");
        if (!tree) {
            std::cerr << "Error: Could not load OBJ file!" << std::endl;
        }
        
        // Leaf Floating logic
        std::random_device rd;
        std::mt19937 gen(rd());
        std::uniform_real_distribution<float> dist(-1.0f, 1.0f);
        std::uniform_real_distribution<float> green_dist(0.7f, 1.0f);  // More green
        std::uniform_real_distribution<float> other_dist(0.0f, 0.4f);
        for (int i = 0; i < 100; ++i) {
            auto leaf = Add_Obj_Mesh_Object("obj/leaf.obj");
            if (!leaf) {
                std::cerr << "Error: Could not load OBJ file!" << std::endl;
                continue;
            }

            // Randomize initial position
            float x = dist(gen) * 2.0f; // Random x position
            float y = dist(gen) * 2.0f; // Random y position
            float z = dist(gen) * 2.0f; // Random z position

            initial_positions.emplace_back(x, y, z); // Save initial position

            Matrix4f t;
            t << 0.0008, 0,   0, x,  // Scale x and translate x
                0,   0.0008, 0, y,  // Scale y and translate y
                0,   0,   0.0008, z,  // Scale z and translate z
                0,   0,   0, 1;     // Homogeneous coordinate

            leaf->Set_Model_Matrix(t);

            // Set material
            Vector3f leaf_color(
                other_dist(gen),     // Low red
                green_dist(gen),     // High green
                other_dist(gen)      // Low blue
            );
            
            leaf->Set_Ka(leaf_color);
            leaf->Set_Kd(leaf_color);
            leaf->Add_Texture("tex_color", OpenGLTextureLibrary::Get_Texture("sphere_color"));
            leaf->Set_Ks(Vector3f(1, 1, 1)); // Specular
            leaf->Set_Shininess(128);

            leaf->Add_Shader_Program(OpenGLShaderLibrary::Get_Shader("basic"));

            leaves.push_back(leaf); // Add to the leaves list
        }

        
        // auto leaf = Add_Obj_Mesh_Object("obj/leaf.obj");
        // // if (!leaf) {
        // //     std::cerr << "Error: Could not load OBJ file!" << std::endl;
        // //     return;
        // // } else {
        // //     std::cerr << "It did" << std::endl;
        // // }
        // // set object's transform
        // Matrix4f t;
        // t << 0.007, 0,   0, 0,  // Scale x
        //     0,   0.007, 0, 0,  // Scale y
        //     0,   0,   0.007, 0, // Scale z
        //     0,   0,   0, 1;   // Homogeneous coordinate
        
        // leaf->Set_Model_Matrix(t);

        // // set object's material
        // leaf->Set_Ka(Vector3f(1, 1, 1)); // Ambient
        // leaf->Set_Kd(Vector3f(1, 1, 1)); // Diffuse
        // leaf->Set_Ks(Vector3f(1, 1, 1)); // Specular

        // leaf->Set_Shininess(128);

        // leaf->Add_Shader_Program(OpenGLShaderLibrary::Get_Shader("basic"));
    

        //// This for-loop updates the rendering model for each object on the list
        for (auto &mesh_obj : mesh_object_array){
            Set_Polygon_Mode(mesh_obj, PolygonMode::Fill);
            Set_Shading_Mode(mesh_obj, ShadingMode::TexAlpha);
            mesh_obj->Set_Data_Refreshed();
            mesh_obj->Initialize();
        }
        Toggle_Play();
    }

    //// add mesh object by reading an .obj file
    OpenGLTriangleMesh *Add_Obj_Mesh_Object(std::string obj_file_name)
    {
        auto mesh_obj = Add_Interactive_Object<OpenGLTriangleMesh>();
        Array<std::shared_ptr<TriangleMesh<3>>> meshes;
        // Obj::Read_From_Obj_File(obj_file_name, meshes);
        Obj::Read_From_Obj_File_Discrete_Triangles(obj_file_name, meshes);

        mesh_obj->mesh = *meshes[0];
        std::cout << "load tri_mesh from obj file, #vtx: " << mesh_obj->mesh.Vertices().size() << ", #ele: " << mesh_obj->mesh.Elements().size() << std::endl;

        mesh_object_array.push_back(mesh_obj);
        return mesh_obj;
    }

    //// add mesh object by reading an array of vertices and an array of elements
    OpenGLTriangleMesh* Add_Tri_Mesh_Object(const std::vector<Vector3>& vertices, const std::vector<Vector3i>& elements)
    {
        auto obj = Add_Interactive_Object<OpenGLTriangleMesh>();
        mesh_object_array.push_back(obj);
        // set up vertices and elements
        obj->mesh.Vertices() = vertices;
        obj->mesh.Elements() = elements;

        return obj;
    }

    //// Go to next frame

    float time = 0.0f;

    virtual void Toggle_Next_Frame()
    {
        // tree logic
        Matrix4f tree_t;
        tree_t << 1, 0,   0, 0,  // Scale x
            0,   1, 0, 0,  // Scale y
            0,   0,   1, 0, // Scale z
            0,   0,   0, 1;   // Homogeneous coordinate
        tree->Set_Model_Matrix(tree_t);


        float scale = 2.5 * 0.0008f; // use this to scale the leaf animation
        for (size_t i = 0; i < leaves.size(); ++i) {
            float offset = i * 0.5f; // Slight phase offset for each leaf
            float newY = initial_positions[i].y() + 0.1f * sin(time + offset); // Animate Y around initial position
            // newY = newY // make y position decrease over time
            //     - 0.1f * time; // 0.1f is the speed of the leaf falling

            // if (newY < -1.0f) {
            //     // Reset to top if it falls off the screen, maintaining the sine wave motion
            //     newY = initial_positions[i].y() + 0.1f * sin(offset); // Reset to initial position with sine wave
            //     newY = newY // make y position decrease over time
            //     - 0.1f * time;
            //     //time = 0.0f; // Reset time for this leaf
            // }

            Matrix4f t;
            t << scale, 0,   0, initial_positions[i].x(),  // X remains constant
                0,   scale, 0, newY,                     // Animated Y
                0,   0,   scale, initial_positions[i].z(), // Z remains constant
                0,   0,   0, 1;

            leaves[i]->Set_Model_Matrix(t);
        }

        time += 0.016f; // Increment time for animation (assuming 60 FPS)

        // Existing frame update logic
        for (auto &mesh_obj : mesh_object_array)
            mesh_obj->setTime(GLfloat(clock() - startTime) / CLOCKS_PER_SEC);

        if (bgEffect) {
            bgEffect->setResolution((float)Win_Width(), (float)Win_Height());
            bgEffect->setTime(GLfloat(clock() - startTime) / CLOCKS_PER_SEC);
            bgEffect->setFrame(frame++);
        }

        if (skybox) {
            skybox->setTime(GLfloat(clock() - startTime) / CLOCKS_PER_SEC);
        }   

        OpenGLViewer::Toggle_Next_Frame();
    }


    virtual void Run()
    {
        OpenGLViewer::Run();
    }
};

int main(int argc, char *argv[])
{
    MyDriver driver;
    driver.Initialize();
    driver.Run();
}

#endif