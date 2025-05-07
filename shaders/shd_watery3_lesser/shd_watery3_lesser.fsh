//
// Simple passthrough fragment shader
//
uniform float time;
uniform vec3 col;

varying vec2 v_vTexcoord;
varying vec4 v_vColour;
varying vec2 PixelPos;

void main()
{
	float dist = sin(v_vTexcoord.x*2.0);
	vec2 Coord = vec2(v_vTexcoord.x, mod(v_vTexcoord.y + ( sin( (v_vTexcoord.s*4.00002) + (time/1000.0) ) / 32.0) + 1.0, 1.0));
	
	gl_FragColor = v_vColour * texture2D( gm_BaseTexture, Coord);
}
