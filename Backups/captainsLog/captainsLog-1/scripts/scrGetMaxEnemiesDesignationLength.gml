for(i = 0; i < array_length_1d(enemies); i++) {
    if(string_length(enemies[i].designation) > maxEnemiesDesignationLength) {
        maxEnemiesDesignationLength = string_length(enemies[i].designation);
    }
}
return maxEnemiesDesignationLength;
