#version 330

in vec2 texcoord;
uniform sampler2D tex;
uniform float corner_radius;

vec4 default_post_processing(vec4 c);

vec4 add_rounded_corners(
    vec4 win_color,
    vec2 tex_coord,
    vec2 tex_size,
    float radius,
    float thickness)
{
    // Distance to the nearest window edge.
    vec2 edge_distance = min(
        tex_coord,
        tex_size - tex_coord
    );

    // Outside the rounded corner region, keep the original window.
    if (all(greaterThanEqual(edge_distance, vec2(radius))))
        return win_color;

    // Find the nearest rounded-corner center.
    vec2 corner_center = vec2(
        tex_coord.x < radius ? radius : tex_size.x - radius,
        tex_coord.y < radius ? radius : tex_size.y - radius
    );

    float distance_from_corner = length(tex_coord - corner_center);

    // Smooth anti-aliased rounded edge.
    float aa = 1.5;
    float outer = radius;
    float inner = radius - thickness;

    float outer_edge = smoothstep(
        outer,
        outer - aa,
        distance_from_corner
    );

    float inner_edge = smoothstep(
        inner,
        inner - aa,
        distance_from_corner
    );

    // Purple accent.
    vec3 purple = vec3(
        0.55,  // red
        0.25,  // green
        0.85   // blue
    );

    // Subtle border.
    float border = clamp(outer_edge - inner_edge, 0.0, 1.0);

    vec3 result = mix(
        win_color.rgb,
        purple,
        border * 0.65
    );

    win_color.rgb = result;

    return win_color;
}

vec4 window_shader()
{
    vec2 tex_size = textureSize(tex, 0);

    vec4 c = texture2D(
        tex,
        texcoord / tex_size,
        0
    );

    vec4 with_corners = add_rounded_corners(
        c,
        texcoord,
        tex_size,
        corner_radius,
        2.0
    );

    return default_post_processing(with_corners);
}
