from PIL import Image

# Load the cross-shaped image
image = Image.open("cubemap.jpg")

# Calculate face dimensions
face_width = image.width // 4
face_height = image.height // 3

# Extract faces using these offset positions
face_positions = {
    "posx": (2 * face_width, face_height),    # Right
    "negx": (0, face_height),                 # Left
    "posy": (face_width, 0),                  # Top
    "negy": (face_width, 2 * face_height),    # Bottom
    "posz": (face_width, face_height),        # Front
    "negz": (3 * face_width, face_height)     # Back
}

# Extract each face and convert to RGB before saving
for face_name, (x, y) in face_positions.items():
    face = image.crop((x, y, x + face_width, y + face_height))
    # Convert RGBA to RGB before saving as JPEG
    if face.mode in ('RGBA', 'P'):
        face = face.convert('RGB')
    face.save(f"{face_name}.jpg")
