player = instance_find(objPlayerShip, 0);
hud = instance_find(objHud2, 0);
prevTarget = instance_find(player.targetID, 0);
enemies = null;
for(i = 0; i < instance_number(objEnemyShip); i++) {
    enemies[i] = instance_find(objEnemyShip, i);
}
