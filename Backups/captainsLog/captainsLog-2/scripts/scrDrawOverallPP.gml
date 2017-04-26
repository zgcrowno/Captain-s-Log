player = instance_find(objRiceCake, 0);
draw_healthbar(630, 1710, 1060, 1730, (player.currentPP / player.maxPP) * 100, c_black, c_teal, c_teal, 0, true, true);
depth = -1;
