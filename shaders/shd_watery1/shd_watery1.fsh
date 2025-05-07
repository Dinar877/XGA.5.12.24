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
	vec2 in_Position2 = v_vTexcoord;
	
	float dx = sin(time * v_vTexcoord.x) * 0.1;
	in_Position2.x = in_Position2.x + dx;
	float dx2 = sin(time * v_vTexcoord.y) * 0.1;
	in_Position2.y = in_Position2.y + dx2;
	
	gl_FragColor = v_vColour * texture2D( gm_BaseTexture, in_Position2) + vec4(col*0.5,v_vColour.a);
}
