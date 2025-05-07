//
// Simple passthrough fragment shader
//
varying vec2 v_vTexcoord;
varying vec4 v_vColour;

uniform float amp;
uniform float freq;
uniform float scaling;
uniform float timer;

void main()
{
    vec2 coord = v_vTexcoord;
    float dx1 = amp * sin(freq * coord.x);
    coord.x = coord.x + dx1;
    gl_FragColor = v_vColour * texture2D( gm_BaseTexture, coord );
}

