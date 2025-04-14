script_execute(state);

scale = lerp(scale, 1, .01);
image_xscale = scale;
image_yscale = scale;

depth = -bbox_bottom;