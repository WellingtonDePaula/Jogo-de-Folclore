/// Função: draw_rotated_rect(x, y, w, h, angle, color)
function draw_rotated_rect(_x, _y, _w, _h, _angle, _color) {
    var hw = _w * 0.5;
    var hh = _h * 0.5;
    var rad = degtorad(_angle);

    var ca = dcos(_angle);
    var sa = dsin(_angle);

    // Define os 4 cantos do retângulo em relação ao centro
    var x0 = -hw, y0 = -hh;
    var x1 =  hw, y1 = -hh;
    var x2 =  hw, y2 =  hh;
    var x3 = -hw, y3 =  hh;

    // Rotaciona e posiciona cada canto
    var rx0 = _x + x0 * ca - y0 * sa;
    var ry0 = _y + x0 * sa + y0 * ca;
    var rx1 = _x + x1 * ca - y1 * sa;
    var ry1 = _y + x1 * sa + y1 * ca;
    var rx2 = _x + x2 * ca - y2 * sa;
    var ry2 = _y + x2 * sa + y2 * ca;
    var rx3 = _x + x3 * ca - y3 * sa;
    var ry3 = _y + x3 * sa + y3 * ca;

    draw_primitive_begin(pr_trianglefan);
    draw_set_color(_color);
    draw_vertex(rx0, ry0);
    draw_vertex(rx1, ry1);
    draw_vertex(rx2, ry2);
    draw_vertex(rx3, ry3);
    draw_vertex(rx0, ry0); // fecha o retângulo
    draw_primitive_end();
}

/// draw_curved_strip(x, y, radius, width, angle_start, angle_end, color)
function draw_curved_strip(_x, _y, _r, _w, _a_start, _a_end, _color) {
    var sides = 20; // quanto mais, mais suave será a curva
    var half_w = _w * 0.5;
    var rad_start = degtorad(_a_start);
    var rad_end = degtorad(_a_end);
    
    draw_primitive_begin(pr_trianglestrip);
    draw_set_color(_color);

    for (var i = 0; i <= sides; i++) {
        var t = i / sides;
        var ang = lerp(rad_start, rad_end, t);
        
        var _cos = dcos(radtodeg(ang));
        var _sin = dsin(radtodeg(ang));
        
        var inner_x = _x + (_r - half_w) * _cos;
        var inner_y = _y + (_r - half_w) * _sin;
        
        var outer_x = _x + (_r + half_w) * _cos;
        var outer_y = _y + (_r + half_w) * _sin;

        draw_vertex(inner_x, inner_y);
        draw_vertex(outer_x, outer_y);
    }
	
	draw_set_color(-1);
    draw_primitive_end();
}


/// draw_sprite_outline(_sprite, _subimg, _x, _y, _color, _thickness)

function draw_sprite_outline(_sprite, _subimg, _x, _y, _color, _thickness) {
    var outline_color = _color;
    var thickness = _thickness;

    draw_set_blend_mode(bm_normal);
    draw_set_color(outline_color);

    for (var dx = -thickness; dx <= thickness; dx++) {
        for (var dy = -thickness; dy <= thickness; dy++) {
            if (dx != 0 || dy != 0) {
                draw_sprite(_sprite, _subimg, _x + dx, _y + dy);
            }
        }
    }

    // Desenha a sprite original no topo (com transparência normal)
    draw_set_color(c_white); // reset color
    draw_sprite(_sprite, _subimg, _x, _y);
}
