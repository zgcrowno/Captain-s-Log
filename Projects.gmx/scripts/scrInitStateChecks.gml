scrAcceptInput("thrusters");
scrAcceptInput("shields");
scrAcceptInput("target");
scrAcceptInput("guns");
scrAcceptInput("cannon");
scrAcceptInput("active");
scrAcceptInput("passive");
scrAcceptInput("cut");

if(keyboard_check_pressed(vk_enter)) {
    if(input == global.util.activeStringLower) {
        if(object_index != objFlasher && object_index != objMezzanine) {
            if (keyboard_check_pressed(vk_enter)) {
                scrActiveFire();
            }
        }
    } else if(input == global.util.passiveStringLower) {
        scrPassiveDivertPower();
    }
}
