#version 330 core

uniform vec2 iResolution;               /* screen resolution, value passed from CPU */
uniform float iTime;                    /* current time, value passed from CPU */
uniform int iFrame;                     /* current frame, value passed from CPU */
in vec2 fragCoord;                      /* fragment shader input: fragment coordinates, valued passed from vertex shader */
out vec4 fragColor;                     /* fragment shader output: fragment color, value passed to pixel processing for screen display */

const float M_PI = 3.1415926535;                        /* const value for PI */
const vec3 BG_COLOR = vec3(184, 243, 255) / 255.;       /* const value for background color */

//// This function converts from Polar Coordinates to Cartesian coordinates

vec2 polar2cart(float angle, float length)
{
    return vec2(cos(angle) * length, sin(angle) * length);
}

//// This is a sample function showing you how to check if a point is inside a triangle

bool inTriangle(vec2 p, vec2 p1, vec2 p2, vec2 p3)
{
    if(dot(cross(vec3(p2 - p1, 0), vec3(p - p1, 0)), cross(vec3(p2 - p1, 0), vec3(p3 - p1, 0))) >= 0. &&
        dot(cross(vec3(p3 - p2, 0), vec3(p - p2, 0)), cross(vec3(p3 - p2, 0), vec3(p1 - p2, 0))) >= 0. &&
        dot(cross(vec3(p1 - p3, 0), vec3(p - p3, 0)), cross(vec3(p1 - p3, 0), vec3(p2 - p3, 0))) >= 0.){
        return true;
    }
    return false;
}

//// This is a sample function showing you how to draw a rotated triangle 
//// Time is specified with iTime

vec3 drawTriangle(vec2 pos, vec2 center, vec3 color)
{
    vec2 p1 = polar2cart(iTime * 2, 160.) + center;
    vec2 p2 = polar2cart(iTime * 2 + 2. * M_PI / 3., 160.) + center;
    vec2 p3 = polar2cart(iTime * 2 + 4. * M_PI / 3., 160.) + center;
    if(inTriangle(pos, p1, p2, p3)){
        return color;
    }
    return vec3(0);
}


/////////////////////////////////////////////////////
//// Step 1 Function: Inside Circle
//// In this function, you will implement a function to checks if a point is inside a circle
//// The inputs include the point position, the circle's center and radius
//// The output is a bool indicating if the point is inside the circle (true) or not (false)
/////////////////////////////////////////////////////
//// Implementation hint: use dot(v,v) to calculate the squared length of a vector v
/////////////////////////////////////////////////////

bool inCircle(vec2 pos, vec2 center, float radius)
{
    /* your implementation starts */
    vec2 vecDist = center - pos;
    float dist = dot(vecDist, vecDist);
    return dist <= radius * radius;
    /* your implementation ends */
}

//// This function calls the inCircle function you implemented above and returns the color of the circle
//// If the point is outside the circle, it returns a zero vector by default
vec3 drawCircle(vec2 pos, vec2 center, float radius, vec3 color)
{
    if(inCircle(pos, center, radius)){
        return color;
    }
    return vec3(0);
}

/////////////////////////////////////////////////////
//// Step 2 Function: Inside Rectangle
//// In this function, you will implement a function to checks if a point is inside a rectangle
//// The inputs include the point position, the left bottom corner and the right top corner of the rectangle
//// The output is a bool indicating if the point is inside the rectangle (true) or not (false)
/////////////////////////////////////////////////////
//// Implementation hint: use .x and .y to access the x and y components of a vec2 variable
/////////////////////////////////////////////////////

bool inRectangle(vec2 pos, vec2 leftBottom, vec2 rightTop)
{
    /* your implementation starts */
    bool withinX = pos.x >= leftBottom.x && pos.x <= rightTop.x;
    bool withinY = pos.y >= leftBottom.y && pos.y <= rightTop.y;
    return withinX && withinY;
    /* your implementation ends */
}

//// This function calls the inRectangle function you implemented above and returns the color of the rectangle
//// If the point is outside the rectangle, it returns a zero vector by default

vec3 drawRectangle(vec2 pos, vec2 leftBottom, vec2 rightTop, vec3 color)
{
    if(inRectangle(pos,leftBottom,rightTop)){
        return color;
    }
    return vec3(0);
}

//// This function draws objects on the canvas by specifying a fragColor for each fragCoord

void mainImage(in vec2 fragCoord, out vec4 fragColor)
{
    //// Get the window center
    vec2 center = vec2(iResolution / 2.);

    //// By default we draw an animated triangle 
    vec3 fragOutput = drawTriangle(fragCoord, center, vec3(1.0));
    
    // // Step 1: Uncomment this line to draw a circle
    // fragOutput = drawCircle(fragCoord, center, 250, vec3(1.0));

    
    // // Step 2: Uncomment this line to draw a rectangle 
    // fragOutput = drawRectangle(fragCoord, center - vec2(500, 50), center + vec2(500, 50), vec3(1.0));


    // // Step 3: Uncomment this line to draw an animated circle with a temporally varying radius controlled by a sine function
    // fragOutput = drawCircle(fragCoord, center, 150 + 50. * sin(iTime * 10), vec3(1.0));

    // // Step 4: Uncomment this line to draw a union of the rectangle and the animated circle you have drawn previously
    // fragOutput = drawRectangle(fragCoord, center - vec2(500, 50), center + vec2(500, 50), vec3(1.0)) + drawCircle(fragCoord, center, 150 + 50. * sin(iTime * 10), vec3(1.0));

    // // Step 5: Implement your customized scene by modifying the mainImage function
    // // Try to leverage what you have learned from Step 1 to 4 to define the shape and color of a new object in the fragment shader
    // // Notice how we put multiple objects together by adding their color values

    vec4 tablePositions[10];
    vec3 tableLines[5];
    vec2 offset = vec2(400, 200);
    float frequency = 20; // Adjust to change speed of oscillation
    tablePositions[0] = vec4((center - offset).x, (center - offset).y, (center + offset).x, (center + offset).y);
    float racketYOffset = (tablePositions[0].w - tablePositions[0].y) * sin(iTime * frequency) * 0.5;
    tablePositions[1] = vec4((center - offset - 100 - 20).x + 50, center.y + racketYOffset, (center + offset + 20).x + 50, center.y - racketYOffset);
    tablePositions[2] = vec4((center - offset - 100 - 20).x + 50, center.y + racketYOffset, (center + offset + 20).x + 50, center.y - racketYOffset);
    
    vec3 table = drawRectangle(fragCoord, vec2(tablePositions[0].x, tablePositions[0].y), vec2(tablePositions[0].z, tablePositions[0].w), vec3(0.133, 0.176, 0.369));
    vec3 net = drawRectangle(fragCoord, vec2(center.x - 7.5, tablePositions[0].y), vec2(center.x + 7.5, tablePositions[0].w), vec3(0.6, 0.3, 0.0));
    tableLines[0] = drawRectangle(fragCoord, vec2(tablePositions[0].x + 15, tablePositions[0].y + 15), vec2(tablePositions[0].z - 15, tablePositions[0].y + 30), vec3(1.0));
    tableLines[1] = drawRectangle(fragCoord, vec2(tablePositions[0].x + 15, tablePositions[0].w - 30), vec2(tablePositions[0].z - 15, tablePositions[0].w - 15), vec3(1.0));
    tableLines[2] = drawRectangle(fragCoord, vec2(tablePositions[0].x + 15, tablePositions[0].y + 30), vec2(tablePositions[0].x + 30, tablePositions[0].w - 15), vec3(1.0));
    tableLines[3] = drawRectangle(fragCoord, vec2(tablePositions[0].z - 30, tablePositions[0].y + 30), vec2(tablePositions[0].z - 15, tablePositions[0].w - 15), vec3(1.0));
    tableLines[4] = drawRectangle(fragCoord, vec2(tablePositions[0].x + 15, center.y - 7.5), vec2(tablePositions[0].z - 15, center.y + 7.5), vec3(1.0));

    vec3 stem1 = drawRectangle(fragCoord, vec2(tablePositions[1].x - 50 - 50, tablePositions[1].y - 15), vec2(tablePositions[1].x, tablePositions[1].y + 15), vec3(0.6, 0.3, 0.0));
    vec3 racket1 = drawCircle(fragCoord, vec2(tablePositions[1].x, tablePositions[1].y), 50, vec3(1.0, 0.0, 0.0));    
    
    vec3 stem2 = drawRectangle(fragCoord, vec2(tablePositions[1].z, tablePositions[1].w - 15), vec2(tablePositions[1].z + 50 + 50, tablePositions[1].w + 15), vec3(0.6, 0.3, 0.0));
    vec3 racket2 = drawCircle(fragCoord, vec2(tablePositions[1].z, tablePositions[1].w), 50, vec3(52.0 / 255.0, 52.0 / 255.0, 52.0 / 255.0));
    racket1 += stem1;
    racket2 += stem2;

    vec2 bottomCorner = vec2(tablePositions[2].x, tablePositions[2].y); // Example coordinates
    vec2 topCorner = vec2(tablePositions[2].z, tablePositions[2].w); // Example coordinates

    // Define frequency of oscillation (how fast the object moves)

    // Calculate the oscillation factor
    float oscillationFactor = 0.5 * (sin(iTime * frequency) + 1.0);

    // Calculate the object's position
    vec2 objectPosition = mix(bottomCorner, topCorner, oscillationFactor);

    // Draw the object (for example, a circle at the object's position)
    vec3 ball = drawCircle(fragCoord, objectPosition, 20, vec3(255,204,0)/255);

    float radius = 50.0;
    float dist = length(fragCoord - objectPosition);
    vec3 color = vec3(255,204,0) / 255;
    // Check if the fragment is inside the circle
    if (dist < radius) {
        fragColor = vec4(color, 1.0);
    } else {
        fragColor = vec4(0.0, 0.0, 0.0, 1.0); // Background color
    }
    vec3 racket = max(racket1, racket2);
    vec3 stem = max(stem1, stem2);

    fragOutput = table + tableLines[0] + tableLines[1] + tableLines[2] + tableLines[3] + tableLines[4];
    fragOutput = mix(fragOutput, net, step(0.01, length(net)));
    fragOutput += racket;
    fragOutput += ball;

    if(fragOutput == vec3(0)){
        fragColor = vec4(BG_COLOR, 1.0);
    }
    //// Otherwise set the fragment color to be the color calculated in fragOutput
    else{
        fragColor = vec4(fragOutput, 1.0);
    }

}

void main()
{
    mainImage(fragCoord, fragColor);
}