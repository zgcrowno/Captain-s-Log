scrAcceptInput(global.util.portStringLower);
scrAcceptInput(global.util.starboardStringLower);
scrAcceptInput(global.util.bowStringLower);
scrAcceptInput(global.util.sternStringLower);
scrAcceptInput(global.util.rotateStringLower);
scrAcceptInput(global.util.allStringLower);

if(keyboard_check_pressed(vk_enter)) {
    if(input == global.util.portStringLower) {
        scrCutThrustersPort();
    } else if(input == global.util.starboardStringLower) {
        scrCutThrustersStarboard();
    } else if(input == global.util.bowStringLower) {
        scrCutThrustersBow();
    } else if(input == global.util.sternStringLower) {
        scrCutThrustersStern();
    } else if(input == global.util.allStringLower) {
        scrCutThrustersAll();
    }
}
