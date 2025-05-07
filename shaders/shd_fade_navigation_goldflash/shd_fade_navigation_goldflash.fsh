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
    //get each individual values from the color
    float Red = OriginalColor.r;
    float Blue = OriginalColor.b;
    float Green = OriginalColor.g;
    float Alpha = OriginalColor.a;

    if (Blue <= 0.2)
    {
		if (Blue > 0.0)
		{
		//Set the new1 color
		//OriginalColor.rgb = mix( OriginalColor.rgb, fade_color.rgb, fade_color.a);
		OriginalColor.rgb = mix( OriginalColor.rgb, fade_color.rgb, fade_color.a);
		gl_FragColor = v_vColour * OriginalColor;
		}
    }
	else if (Blue > 0.2)
    {
		if (Blue > 0.0)
		{
		//Set the new1 color
		//OriginalColor.rgb = mix( OriginalColor.rgb, fade_color.rgb, fade_color.a);
		gl_FragColor = OriginalColor;
		}
    }
}

