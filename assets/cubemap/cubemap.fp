#version 140

in vec4 var_position;
out vec4 color_out;

uniform samplerCube cube_map;
uniform fs_uniforms
{
    vec4 tint;
};

void main()
{
    // Pre-multiply tint alpha since all runtime textures have.
    vec4 tint_pm = vec4(tint.xyz * tint.w, tint.w);
    vec4 skymap = texture(cube_map, var_position.xyz) * tint_pm;
    
    color_out = vec4(skymap.rgb,1.0);
}

