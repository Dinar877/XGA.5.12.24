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
    vec4 source = texture2D( gm_BaseTexture, v_vTexcoord );
    
    DoAlphaTest( source );
    
    for(float i = palette_UVs.y; i < palette_UVs.w; i+=texel_size.y )
    {
        if (distance(source, texture2D(palette_texture, vec2(palette_UVs.x, i))) <= 0.004)
        {
            float palette_V = palette_UVs.x + texel_size.x * palette_index;
            source = texture2D(palette_texture, vec2(palette_V, i));
            break;
        }
    }
    
    gl_FragColor = source * v_vColour;
}
