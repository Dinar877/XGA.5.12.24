//
// Simple passthrough fragment shader
//
varying vec2 v_vTexcoord;
varying vec4 v_vColour;

uniform float tx,ty; // x, y waves phase


void main()
{
    gl_FragColor = v_vColour * texture2D( gm_BaseTexture, v_vTexcoord);
}
