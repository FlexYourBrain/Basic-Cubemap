varying highp vec4 var_position;

uniform lowp samplerCube cube_map;
uniform lowp vec4 tint;

void main()
{
    // Pre-multiply tint alpha since all runtime textures have.
    vec4 tint_pm = vec4(tint.xyz * tint.w, tint.w);
    vec4 skymap = texture(cube_map, var_position.xyz) * tint_pm;
    
    gl_FragColor = vec4(skymap.rgb,1.0);
}

