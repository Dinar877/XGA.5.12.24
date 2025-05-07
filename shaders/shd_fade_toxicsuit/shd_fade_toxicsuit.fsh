//
// Simple passthrough fragment shader
//
varying vec2 v_vTexcoord;
varying vec4 v_vColour;


//palette swapping var's
uniform sampler2D palette; //the texture for the palette sprite "spr_toxicpalette"
uniform float palette_index; //current palette index being used

uniform float pw; //width of texel
uniform float ph; //height of texel
uniform float tw; //width of texture page
uniform float th; //height of texture page

uniform float uv_l; 
uniform float uv_r; 
uniform float uv_t; 
uniform float uv_b; 
uniform vec4 uvs; 


/////////////////////////////////////////////////BTW YOU CANNOT USE "&&" IN SHADERS!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!


void main()
{
	//texels
	vec4 current_texel = texture2D( gm_BaseTexture, v_vTexcoord ); //get texel of current pixel, from the original sprite's texture
	vec4 palette_texel = texture2D( gm_BaseTexture, v_vTexcoord );
	
	//checks every single texel inside texture - 18 pixels tall palette sprite
	for (float j = 0.0; j < 1.0; j += ph + (ph * 0.1))
	{
			//gets palette texel, specified by y = j
			palette_texel = texture2D( palette, vec2( 0.0, j));
			
			//if color values from sprite texture and palette sprite texture match
			if (palette_texel.rgba == current_texel.rgba)
			{
				current_texel = texture2D( palette, vec2( palette_index, j));	//changed pixel
			}
	}
	
	//output final color if visible
	if (current_texel.a > 0.0)
	{
		gl_FragColor = v_vColour * current_texel;
	}
}

