player = instance_find(objRiceCake, 0);
hud = instance_find(objHud, 0);
deadTarget = false;
pawns = null;
for(i = 0; i < instance_number(objPawn); i++) {
    pawns[i] = instance_find(objPawn, i);
}
