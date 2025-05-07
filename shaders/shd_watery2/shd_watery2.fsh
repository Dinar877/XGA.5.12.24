//
// Simple passthrough fragment shader
//
uniform float WaveAmpl;
uniform float time;
uniform float SmallNo;

varying vec2 v_vTexcoord;
varying vec4 v_vColour;
varying vec2 PixelPos;

void main()
{
	vec2 in_Position2 = v_vTexcoord;
	
	float dx = sin(time * v_vTexcoord.x) * WaveAmpl;
	in_Position2.x = in_Position2.x + dx;
	float dx2 = sin(time * v_vTexcoord.y) * WaveAmpl;
	in_Position2.y = in_Position2.y + dx2;
	
	vec4 originalTex = texture2D(gm_BaseTexture, v_vTexcoord);
	
	vec4 colour = v_vColour * texture2D(gm_BaseTexture, in_Position2);
	
	gl_FragColor = v_vColour * colour;
}
