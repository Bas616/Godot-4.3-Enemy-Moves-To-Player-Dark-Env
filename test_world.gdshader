shader_type spatial;

uniform vec4 albedo : source_color = vec4(1.0);
uniform float emission_strength : hint_range(0.0, 10.0) = 1.0;

void fragment() {
    ALBEDO = albedo.rgb;
    EMISSION = ALBEDO * emission_strength;
}