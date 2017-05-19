scrAcceptInput(global.util.thrustersStringLower);
scrAcceptInput(global.util.shieldsStringLower);
scrAcceptInput(global.util.targetStringLower);
scrAcceptInput(global.util.gunsStringLower);
scrAcceptInput(global.util.cannonStringLower);
scrAcceptInput(global.util.activeStringLower);
scrAcceptInput(global.util.passiveStringLower);
scrAcceptInput(global.util.cutStringLower);

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
