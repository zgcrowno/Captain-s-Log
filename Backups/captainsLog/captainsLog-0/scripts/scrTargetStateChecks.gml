var enemies = scrGetEnemies();
for(i = 0; i < array_length_1d(enemies); i++) {
    scrAcceptInput(enemies[i].designation);
    if(keyboard_check_pressed(vk_enter)) {
        for(j = 0; j < array_length_1d(enemies); j++) {
            if(input == enemies[j].designation) {
                target = enemies[j];
            }
        }
        scrSetState(initState);
    }
}
