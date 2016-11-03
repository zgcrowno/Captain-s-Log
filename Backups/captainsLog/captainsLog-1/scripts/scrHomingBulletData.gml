player = instance_find(objPlayerShip, 0);
hud = instance_find(objHud2, 0);
prevTarget = instance_find(player.targetID, 0);
pawns = null;
for(i = 0; i < instance_number(objPawn); i++) {
    pawns[i] = instance_find(objPawn, i);
}
