strenghtCharged += .1;
strenghtCharged = clamp(strenghtCharged, 0,  maxCharge);
show_debug_message([strenghtCharged, floor(strenghtCharged)]);