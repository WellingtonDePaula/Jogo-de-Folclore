manager = undefined;
currentFrame = 0;
roomTarget = undefined;
sceneArray = undefined;

canSkip = false;

alpha = 1;
minAlpha = 0
fadeTime = 0;
blackScreenTime = 0;

drawSkipMessage = function() {
		var _scale = global.scale;
		
		var textColor = c_white;
		var text = "Press space to skip";
		var _textScale = _scale * .5;
		
		var borderDist = 20;
		var guiWidth = display_get_gui_width();
		var guiHeight = display_get_gui_height();
		
		var font = global.mainFont.font;
		
		font_enable_sdf(font, true);
		font_enable_effects(font, true, {
			outlineEnable: true,
			outlineDistance: 4,
			outlineColour: c_black,
		});
		
		draw_set_font(font);
		draw_set_halign(fa_right);
		draw_set_valign(fa_middle);
		
		var xx = guiWidth - borderDist;
		var yy = guiHeight - borderDist;
		
		draw_text_transformed_color(xx, yy, text, _textScale, _textScale, 0, textColor, textColor, textColor, textColor, 1);
		
		draw_set_valign(-1);
		draw_set_halign(-1);
		draw_set_font(-1);
		font_enable_sdf(font, false);
}

nextFrame = function() {
	
	static step = 0;
	static finished = false;
	if(keyboard_check_pressed(manager.inputs.nextFrame) && !finished) {
		var len = sprite_get_number(sceneArray[0]);
		if(canSkip) {
			canSkip = false;
			step ++;
			step = clamp(step, 0, len);
			
			if(step == len) {
				finished = true;
				step --;
			}
			currentFrame = step;
			Alarm[0] = sceneArray[1] * FPS;
		} else {
			canSkip = true;
			Alarm[0] = ALARM_INACTIVE;
		}
		
	}
	
	if(finished) {
		canSkip = false;
		var factor =  (delta / FPS) / (alpha * fadeTime);
		alpha = lerp(alpha, minAlpha, factor);
		
		if(alpha <= minAlpha && Alarm[1] == ALARM_INACTIVE) {
			Alarm[1] = blackScreenTime * FPS;
		}
	}
}

//Alarms
for(var i = 0; i < 12; i++) {
	Alarm[i] = ALARM_INACTIVE;
}