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

function scrExecuteWithArgs(func, args) {
    var len = array_length(args);
    switch(len) {
        case 0: return script_execute(func); break;
        case 1: return script_execute(func, args[0]); break;
        case 2: return script_execute(func, args[0], args[1]); break;
        case 3: return script_execute(func, args[0], args[1], args[2]); break;
        case 4: return script_execute(func, args[0], args[1], args[2], args[3]); break;
        default:
            show_debug_message("Erro: argumentos demais em scrExecuteWithArgs");
            return undefined;
    }
}