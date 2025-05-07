//
// Simple passthrough fragment shader
//
uniform vec4 fade_color;
uniform vec4 NewColor;
varying vec2 v_vTexcoord;
varying vec4 v_vColour;

void main()
{
     vec4 OriginalColor =  v_vColour * texture2D( gm_BaseTexture, v_vTexcoord );
    //get each individual values from the color
    float Red = OriginalColor.r;
    float Blue = OriginalColor.b;
    float Green = OriginalColor.g;
    float Alpha = OriginalColor.a;
    //if actual pixel detected then make it whiter, else do nothing
    if (Green >= 0.27)
    {
		OriginalColor.rgb = mix( OriginalColor.rgb, fade_color.rgb, fade_color.a);
		gl_FragColor = v_vColour * OriginalColor;
    }
    else if (Green < 0.27)
    {
		gl_FragColor = OriginalColor;
    }
}

