#macro delta global.deltaFactor
#macro ALARM_INACTIVE -100
#macro FPS global.fpsFactor

function drawVelocityVectorsThick(velh, velv, x, y, scale, thickness) {
    var vx = velh * scale;
    var vy = velv * scale;

    // Resultante
    draw_set_color(c_lime);
    drawThickLine(x, y, x + vx, y + vy, thickness);

    // Componente horizontal
    draw_set_color(c_red);
    drawThickLine(x, y, x + vx, y, thickness);

    // Componente vertical
    draw_set_color(c_blue);
    drawThickLine(x, y, x, y + vy, thickness);

    draw_set_color(c_white);
}

/// @helper draw_thick_line(x1, y1, x2, y2, thickness)
/// Desenha uma "linha grossa" como um retângulo fino
function drawThickLine(x1, y1, x2, y2, thickness) {
    var angle = point_direction(x1, y1, x2, y2);
    var dx = lengthdir_x(thickness * 0.5, angle + 90);
    var dy = lengthdir_y(thickness * 0.5, angle + 90);

    draw_primitive_begin(pr_trianglestrip);
    draw_vertex(x1 - dx, y1 - dy);
    draw_vertex(x1 + dx, y1 + dy);
    draw_vertex(x2 - dx, y2 - dy);
    draw_vertex(x2 + dx, y2 + dy);
    draw_primitive_end();
}