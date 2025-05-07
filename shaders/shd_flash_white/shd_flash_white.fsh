//
// Simple passthrough fragment shader
//
varying vec2 v_vTexcoord;
varying vec4 v_vColour;

void main()
{
    vec4 Color = texture2D( gm_BaseTexture, v_vTexcoord );
    Color.rgb = vec3( 1.0, 1.0, 1.0);
	
    //if actual pixel detected then make it whiter, else do nothing
    if (Color.a == 0.0)
    {
		gl_FragColor = vec4( 0.0, 0.0, 0.0, 0.0);
    }
    else if (Color.a > 0.0)
    {
		gl_FragColor = v_vColour *  Color;
    }
}

