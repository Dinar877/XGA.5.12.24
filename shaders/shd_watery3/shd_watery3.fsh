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
	float dist = sin(v_vTexcoord.x*3.141592654);
	vec2 Coord = vec2(mod(v_vTexcoord.x + ( sin( (v_vTexcoord.y*6.283) + (time/10.0) ) / 32.0) + 1.0, 1.0), v_vTexcoord.y);
	vec2 Coord2 = vec2(mod(v_vTexcoord.x + ( sin( (Coord.y*9.4245) - (time/10.0) ) / 32.0) + 1.0, 1.0), v_vTexcoord.y);
	gl_FragColor = v_vColour * texture2D( gm_BaseTexture, Coord2);
}

