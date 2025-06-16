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