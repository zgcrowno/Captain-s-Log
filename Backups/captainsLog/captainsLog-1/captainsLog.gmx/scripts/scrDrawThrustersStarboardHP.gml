player = instance_find(objRiceCake, 0);
draw_healthbar(136, 1790, 196, 1800, (player.currentHPThrustersStarboard / player.maxHPThrustersStarboard) * 100, c_black, c_maroon, c_maroon, 0, true, true);
depth = -1;
