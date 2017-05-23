scrAcceptInput(global.util.portStringLower);
scrAcceptInput(global.util.starboardStringLower);
scrAcceptInput(global.util.bowStringLower);
scrAcceptInput(global.util.sternStringLower);
scrAcceptInput(global.util.allStringLower);

if(keyboard_check_pressed(vk_enter)) {
    if(global.input == global.util.portStringLower) {
        if (currentHPShieldsPort > 0) {
            scrShieldsPort();
        } else {
            scrSetState(global.util.initState);
            //TO DO: Error about user input
        }
    } else if(global.input == global.util.starboardStringLower) {
        if (currentHPShieldsStarboard > 0) {
            scrShieldsStarboard();
        } else {
            scrSetState(global.util.initState);
            //TO DO: Error about user input
        }
    } else if(global.input == global.util.bowStringLower) {
        if (currentHPShieldsBow > 0) {
            scrShieldsBow();
        } else {
            scrSetState(global.util.initState);
            //TO DO: Error about user input
        }
    } else if(global.input == global.util.sternStringLower) {
        if (currentHPShieldsStern > 0) {
            scrShieldsStern();
        } else {
            scrSetState(global.util.initState);
            //TO DO: Error about user input
        }
    } else if(global.input == global.util.allStringLower) {
        scrShieldsAll();
    }
}
