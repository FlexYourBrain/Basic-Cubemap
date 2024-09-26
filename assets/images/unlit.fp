#version 140

uniform sampler2D tex0;

in vec2 var_texcoord0;
out vec4 color_out;

void main()
{
    vec4 color = texture(tex0, var_texcoord0.xy);
    color_out = vec4(color.rgb,1.0);
}

