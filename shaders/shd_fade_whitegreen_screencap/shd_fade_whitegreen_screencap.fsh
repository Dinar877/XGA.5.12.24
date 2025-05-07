//
// Simple passthrough fragment shader
//
uniform vec4 fade_color;
uniform vec4 NewColor;
varying vec2 v_vTexcoord;
varying vec4 v_vColour;

void main()
{
    //Get the original color
    vec4 OriginalColor =  v_vColour * texture2D( gm_BaseTexture, v_vTexcoord );
    //Set the new1 color
	OriginalColor.a = 1.0;
    OriginalColor.rgb = mix( OriginalColor.rgb, fade_color.rgb, fade_color.a);

	gl_FragColor = v_vColour * OriginalColor;
}

