//A collection of all the pawns in the room (in the future, this will be a collection of all enemies)
pawns = null;
maxPawnsDesignationLength = 0;
for(i = 0; i < instance_number(objPawn); i++) {
    pawns[i] = instance_find(objPawn, i);
    if(string_length(pawns[i].designation) > maxPawnsDesignationLength) {
        maxPawnsDesignationLength = string_length(pawns[i].designation);
    }
}
