scrAcceptInput(global.util.thrustersStringLower);
scrAcceptInput(global.util.shieldsStringLower);
scrAcceptInput(global.util.gunsStringLower);
scrAcceptInput(global.util.cannonStringLower);
scrAcceptInput(global.util.passiveStringLower);
scrAcceptInput(global.util.targetStringLower);
scrAcceptInput(global.util.allStringLower);

if(keyboard_check_pressed(vk_enter)) {
    if(input == global.util.targetStringLower) {
        scrCutTarget();
    } else if(input == global.util.gunsStringLower) {
        scrCutGuns();
    } else if(input == global.util.cannonStringLower) {
        scrCutCannon();
    } else if(input == global.util.passiveStringLower) {
        scrCutPassive();
    } else if(input == global.util.allStringLower) {
        scrCutAll();
    }
}
