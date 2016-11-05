for(k = 0; k < array_length_1d(enemies); k++) {
    if(enemies[k].designation == input) {
        if(!(requiredPPGuns > currentPP) && !guns) {
            target = enemies[k];
            targetID = enemies[k].id;
            guns = true;
            currentPP -= requiredPPGuns;
            currentPPGuns += requiredPPGuns;
        } else if(guns) {
            target = enemies[k];
            targetID = enemies[k].id;
            guns = true;
        } else {
            //Error to user about lack of power
        }
    }
}
script_execute(scrWipeToInitState);
