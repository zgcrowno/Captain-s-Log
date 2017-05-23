scrAcceptInput(global.util.portStringLower);
scrAcceptInput(global.util.starboardStringLower);
scrAcceptInput(global.util.bowStringLower);
scrAcceptInput(global.util.sternStringLower);
scrAcceptInput(global.util.allStringLower);

if(keyboard_check_pressed(vk_enter)) {
    if(global.input == global.util.portStringLower) {
        scrCutShieldsPort();
    } else if(global.input == global.util.starboardStringLower) {
        scrCutShieldsStarboard();
    } else if(global.input == global.util.bowStringLower) {
        scrCutShieldsBow();
    } else if(global.input == global.util.sternStringLower) {
        scrCutShieldsStern();
    } else if(global.input == global.util.allStringLower) {
        scrCutShieldsAll();
    }
}
