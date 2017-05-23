scrAcceptInput(global.util.portStringLower);
scrAcceptInput(global.util.starboardStringLower);
scrAcceptInput(global.util.bowStringLower);
scrAcceptInput(global.util.sternStringLower);
scrAcceptInput(global.util.rotateStringLower);
scrAcceptInput(global.util.allStringLower);

if(keyboard_check_pressed(vk_enter)) {
    if(global.input == global.util.portStringLower) {
        scrCutThrustersPort();
    } else if(global.input == global.util.starboardStringLower) {
        scrCutThrustersStarboard();
    } else if(global.input == global.util.bowStringLower) {
        scrCutThrustersBow();
    } else if(global.input == global.util.sternStringLower) {
        scrCutThrustersStern();
    } else if(global.input == global.util.allStringLower) {
        scrCutThrustersAll();
    }
}
