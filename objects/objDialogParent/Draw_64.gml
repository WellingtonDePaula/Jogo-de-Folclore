if(showingDialog) {
	var scale = global.scale;
	var fontScale = 20 * scale;
	var font = font_add("nokiafc22.ttf", fontScale, false, false, 32, 128);
	
	
	var screenWidth = display_get_gui_width();
	var screenHeight = display_get_gui_height();
	
	#region box
	
	var boxMargin = 10 * scale;
	
	var boxWidth = screenWidth - boxMargin;
	var boxHeight = 300 * scale;
	
	var boxX1 = boxMargin;
	var boxY1 = screenHeight - boxHeight;
	
	var boxX2 = boxWidth;
	var boxY2 = screenHeight - boxMargin;
	
	draw_set_color(c_black);
	draw_set_alpha(.8);
	
	draw_rectangle(boxX1, boxY1, boxX2, boxY2, false);
	
	draw_set_color(-1);
	draw_set_alpha(1);
	
	#endregion
	
	#region message
	
	var textMargin = 2.5 * boxMargin;
	
	var textX = boxX1 + textMargin;
	var textY = boxY1 + textMargin - (scale * 10);
	var _message = currentDialog.message;
	
	var spacing = fontScale + (15 * scale);
	var width = boxWidth - textMargin - (scale * 20);
	
	draw_set_font(font);
	
	draw_text_ext(textX, textY, _message, spacing, width);
	
	draw_set_font(-1);
	
	#endregion
	var _sprite = currentDialog.sprite;
	var _spriteWitdh = sprite_get_width(_sprite)/2;
	var _scale = 5;
	
	draw_sprite_ext(currentDialog.sprite, 0, boxX1+(_spriteWitdh*_scale), boxY1, _scale, _scale, 0, c_white, 1);
}