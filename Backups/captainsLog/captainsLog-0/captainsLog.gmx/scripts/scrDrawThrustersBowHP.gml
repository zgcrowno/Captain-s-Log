player = instance_find(objRiceCake, 0);
draw_healthbar(78, 1765, 138, 1775, (player.currentHPThrustersBow / player.maxHPThrustersBow) * 100, c_black, c_maroon, c_maroon, 0, true, true);
depth = -1;
