/// @description Menu Setup
#macro SAVEFILE "save.sav" 

gui_width = RES_W;
gui_height = RES_H;
gui_margin = 32;

menu_x = gui_width + 200;
menu_y = gui_height - gui_margin; 
menu_x_target = gui_width - gui_margin;
menu_speed = 25; // lower = faster
menu_font = F_menu
menu_itemheight = font_get_size(F_menu);
menu_commited = -1;
menu_control = true;

menu[2] = "New Game";
menu[1] = "Continue";
menu[0] = "Quit";

menu_items = array_length_1d(menu);

menu_top = menu_y - ((menu_itemheight * 1.5) * menu_items);

menu_cursor = 2;

