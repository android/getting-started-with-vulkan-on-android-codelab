#version 450

layout(location = 0) in vec2 vTexCoords;

layout(binding = 1) uniform sampler2D samp;

// Output colour for the fragment
layout(location = 0) out vec4 outColor;

void main() {
    outColor = texture(samp, vTexCoords);
}