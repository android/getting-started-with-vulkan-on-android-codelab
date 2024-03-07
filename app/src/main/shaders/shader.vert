#version 450

// Uniform buffer containing an MVP matrix.
// Currently the vulkan backend only sets the rotation matix
// required to handle device rotation.
layout(binding = 0) uniform UniformBufferObject {
    mat4 MVP;
} ubo;

vec2 positions[3] = vec2[](
    vec2(0.0, 0.577),
    vec2(-0.5, -0.289),
    vec2(0.5, -0.289)
);

void main() {
    gl_Position = ubo.MVP * vec4(positions[gl_VertexIndex], 0.0, 1.0);
}