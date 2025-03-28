shader_type spatial;
render_mode unshaded, cull_disabled;

uniform sampler2D screen_texture: hint_screen_texture;

void vertex() {
	// Called for every vertex the material is visible on.
}

void fragment()
{
	// Called for every pixel the material is visible on.

//vec3 newColour = vec3(COLOR.r + COLOR.g + COLOR.b/3.0);
float r = texture(screen_texture, 1.0 - SCREEN_UV).r;
float g = texture(screen_texture, 1.0 - SCREEN_UV).g;
float b = texture(screen_texture, 1.0 - SCREEN_UV).b;

ALBEDO = vec3(r,g,b);

}

//void light() {
//	// Called for every pixel for every light affecting the material.
//	// Uncomment to replace the default light processing function with this one.
//}
