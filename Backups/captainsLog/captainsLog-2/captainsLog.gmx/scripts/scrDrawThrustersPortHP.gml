player = instance_find(objRiceCake, 0);
draw_healthbar(20, 1790, 80, 1800, (player.currentHPThrustersPort / player.maxHPThrustersPort) * 100, c_black, c_maroon, c_maroon, 0, true, true);
depth = -1;
