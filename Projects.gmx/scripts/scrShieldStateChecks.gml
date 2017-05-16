scrAcceptInput(global.util.portStringLower);
scrAcceptInput(global.util.starboardStringLower);
scrAcceptInput(global.util.bowStringLower);
scrAcceptInput(global.util.sternStringLower);
scrAcceptInput(global.util.allStringLower);

if(keyboard_check_pressed(vk_enter)) {
    if(input == global.util.portStringLower) {
        if (currentHPShieldsPort > 0) {
            scrShieldsPort();
        } else {
            scrSetState(initState);
            //TO DO: Error about user input
        }
    } else if(input == global.util.starboardStringLower) {
        if (currentHPShieldsStarboard > 0) {
            scrShieldsStarboard();
        } else {
            scrSetState(initState);
            //TO DO: Error about user input
        }
    } else if(input == global.util.bowStringLower) {
        if (currentHPShieldsBow > 0) {
            scrShieldsBow();
        } else {
            scrSetState(initState);
            //TO DO: Error about user input
        }
    } else if(input == global.util.sternStringLower) {
        if (currentHPShieldsStern > 0) {
            scrShieldsStern();
        } else {
            scrSetState(initState);
            //TO DO: Error about user input
        }
    } else if(input == global.util.allStringLower) {
        scrShieldsAll();
    }
}
