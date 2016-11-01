for(k = 0; k < array_length_1d(pawns); k++) {
    if(pawns[k].designation == input) {
        if(!(requiredPPGuns > currentPP) && !guns) {
            target = pawns[k];
            targetID = pawns[k].id;
            guns = true;
            currentPP -= requiredPPGuns;
            currentPPGuns += requiredPPGuns;
        } else if(guns) {
            target = pawns[k];
            targetID = pawns[k].id;
            guns = true;
        } else {
            //Error to user about lack of power
        }
    }
}
script_execute(scrWipeToInitState);
