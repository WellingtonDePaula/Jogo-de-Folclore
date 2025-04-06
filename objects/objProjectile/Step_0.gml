depth = -bbox_bottom;
verifyCollision();

speed = spd*delta;
spd = lerp(spd, 0, .01);

image_angle += speed * spdMultiplier;