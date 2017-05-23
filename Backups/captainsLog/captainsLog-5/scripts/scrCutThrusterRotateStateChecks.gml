scrAcceptInput(global.util.clockStringLower);
scrAcceptInput(global.util.countStringLower);
scrAcceptInput(global.util.allStringLower);

if(keyboard_check_pressed(vk_enter)) {
    if(global.input == global.util.clockStringLower) {
        scrCutThrustersRotateClockwise();
    } else if(global.input == global.util.countStringLower) {
        scrCutThrustersRotateCounterclockwise();
    } else if(global.input == global.util.allStringLower) {
        scrCutThrustersRotateAll();
    }
}
