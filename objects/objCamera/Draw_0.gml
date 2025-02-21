draw_line(viewTarget.x, viewTarget.y, mouse_x, mouse_y);
var dist = point_distance(viewTarget.x, viewTarget.y, mouse_x, mouse_y);
draw_text(viewTarget.x-22, viewTarget.y-32, dist);