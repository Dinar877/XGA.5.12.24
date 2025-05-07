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
	vec2 Coord = vec2(v_vTexcoord.x + dist*(v_vTexcoord.y/1.0)*(sin(v_vTexcoord.y+time/1000.0 + v_vTexcoord.x/1000.0))/90.0,v_vTexcoord.y);
	
	gl_FragColor = v_vColour * texture2D( gm_BaseTexture, Coord);
}
