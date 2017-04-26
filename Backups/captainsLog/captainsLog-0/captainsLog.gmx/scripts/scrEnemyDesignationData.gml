for(i = 0; i < instance_number(objPawn); i++) {
    pawn = instance_find(objPawn, i);
    pawn.designation = "pawn" + string(i);
}
