/// @description Insert description here
// You can write your code in this editor

// Draws the text on top of the button for the menus
// ex. Start, Help, Quit
draw_self();

draw_set_font(f_menu_text);

draw_set_halign(fa_center);
draw_set_valign(fa_middle);

draw_text(x, y, button_text);

// resets the alignment incase used again in the program
draw_set_halign(fa_left);
draw_set_valign(fa_top);

// resets font
draw_set_font(0);




