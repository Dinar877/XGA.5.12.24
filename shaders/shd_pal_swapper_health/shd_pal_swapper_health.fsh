varying vec2 v_vTexcoord;
varying vec4 v_vColour;

uniform sampler2D palette_texture;
uniform vec2 texel_size;
uniform vec4 palette_UVs;
uniform float palette_index;

uniform vec4 fade_color;
uniform vec4 NewColor;

void main()
{
    vec4 source = v_vColour * texture2D( gm_BaseTexture, v_vTexcoord );
    
    DoAlphaTest( source );
    
    for(float i = palette_UVs.y; i < palette_UVs.w; i+=texel_size.y )
    {
        if (distance(source, texture2D(palette_texture, vec2(palette_UVs.x, i))) <= 0.004)
        {
            float palette_V = palette_UVs.x + texel_size.x * palette_index;
            source = texture2D(palette_texture, vec2(palette_V, i));
            
                //Get the original color
                vec4 OriginalColor = texture2D(palette_texture, vec2(palette_V, i));
                //Set the new1 color
                OriginalColor.rgb = mix( OriginalColor.rgb, fade_color.rgb, fade_color.a);
                //get each individual values from the color
                float Red = OriginalColor.r;
                float Blue = OriginalColor.b;
                float Green = OriginalColor.g;
                float Alpha = OriginalColor.a;
                //if actual pixel detected then make it whiter, else do nothing
                if (Alpha == 0.0)
                {
                gl_FragColor = vec4( Red, Green, Blue, 0.0);
                }
                else
                {
                gl_FragColor = OriginalColor;
                break;
                }
            
        }
   
    }
        
    
            
     
}
