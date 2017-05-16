scrAcceptInput(global.util.portStringLower);
scrAcceptInput(global.util.starboardStringLower);
scrAcceptInput(global.util.bowStringLower);
scrAcceptInput(global.util.sternStringLower);
scrAcceptInput(global.util.allStringLower);

if(keyboard_check_pressed(vk_enter)) {
    if(input == global.util.portStringLower) {
        scrCutShieldsPort();
    } else if(input == global.util.starboardStringLower) {
        scrCutShieldsStarboard();
    } else if(input == global.util.bowStringLower) {
        scrCutShieldsBow();
    } else if(input == global.util.sternStringLower) {
        scrCutShieldsStern();
    } else if(input == global.util.allStringLower) {
        scrCutShieldsAll();
    }
}
