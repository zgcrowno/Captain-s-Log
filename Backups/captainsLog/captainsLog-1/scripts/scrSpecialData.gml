player = instance_find(objPlayerShip, 0);
hud = instance_find(objHud2, 0);
directionOffset = player.image_angle;
pawns = null;

//Add the enemies to the array
for(i = 0; i < instance_number(objPawn); i++) {
    pawns[i] = instance_find(objPawn, i);
}
