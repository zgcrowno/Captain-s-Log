if(!((requiredPPShields * 4) > currentPP) && !shieldsPort && !shieldsStarboard && !shieldsBow && !shieldsStern) {
    shieldsPort = true;
    shieldsStarboard = true;
    shieldsBow = true;
    shieldsStern = true;
    currentPP -= (requiredPPShields * 4);
    currentPPShieldsPort += requiredPPShields;
    currentPPShieldsStarboard += requiredPPShields;
    currentPPShieldsBow += requiredPPShields;
    currentPPShieldsStern += requiredPPShields;
} else if(!((requiredPPShields * 3) > currentPP) && shieldsPort && !shieldsStarboard && !shieldsBow && !shieldsStern) {
    shieldsStarboard = true;
    shieldsBow = true;
    shieldsStern = true;
    currentPP -= (requiredPPShields * 3);
    currentPPShieldsStarboard += requiredPPShields;
    currentPPShieldsBow += requiredPPShields;
    currentPPShieldsStern += requiredPPShields;
} else if(!((requiredPPShields * 3) > currentPP) && !shieldsPort && shieldsStarboard && !shieldsBow && !shieldsStern) {
    shieldsPort = true;
    shieldsBow = true;
    shieldsStern = true;
    currentPP -= (requiredPPShields * 3);
    currentPPShieldsPort += requiredPPShields;
    currentPPShieldsBow += requiredPPShields;
    currentPPShieldsStern += requiredPPShields;
} else if(!((requiredPPShields * 3) > currentPP) && !shieldsPort && !shieldsStarboard && shieldsBow && !shieldsStern) {
    shieldsPort = true;
    shieldsStarboard = true;
    shieldsStern = true;
    currentPP -= (requiredPPShields * 3);
    currentPPShieldsPort += requiredPPShields;
    currentPPShieldsStarboard += requiredPPShields;
    currentPPShieldsStern += requiredPPShields;
} else if(!((requiredPPShields * 3) > currentPP) && !shieldsPort && !shieldsStarboard && !shieldsBow && shieldsStern) {
    shieldsPort = true;
    shieldsStarboard = true;
    shieldsBow = true;
    currentPP -= (requiredPPShields * 3);
    currentPPShieldsPort += requiredPPShields;
    currentPPShieldsStarboard += requiredPPShields;
    currentPPShieldsBow += requiredPPShields;
} else if(!((requiredPPShields * 2) > currentPP) && shieldsPort && shieldsStarboard && !shieldsBow && !shieldsStern) {
    shieldsBow = true;
    shieldsStern = true;
    currentPP -= (requiredPPShields * 2);
    currentPPShieldsBow += requiredPPShields;
    currentPPShieldsStern += requiredPPShields;
} else if(!((requiredPPShields * 2) > currentPP) && shieldsPort && !shieldsStarboard && shieldsBow && !shieldsStern) {
    shieldsStarboard = true;
    shieldsStern = true;
    currentPP -= (requiredPPShields * 2);
    currentPPShieldsStarboard += requiredPPShields;
    currentPPShieldsStern += requiredPPShields;
} else if(!((requiredPPShields * 2) > currentPP) && shieldsPort && !shieldsStarboard && !shieldsBow && shieldsStern) {
    shieldsStarboard = true;
    shieldsBow = true;
    currentPP -= (requiredPPShields * 2);
    currentPPShieldsStarboard += requiredPPShields;
    currentPPShieldsBow += requiredPPShields;
} else if(!((requiredPPShields * 2) > currentPP) && !shieldsPort && shieldsStarboard && shieldsBow && !shieldsStern) {
    shieldsPort = true;
    shieldsStern = true;
    currentPP -= (requiredPPShields * 2);
    currentPPShieldsPort += requiredPPShields;
    currentPPShieldsStern += requiredPPShields;
} else if(!((requiredPPShields * 2) > currentPP) && !shieldsPort && shieldsStarboard && !shieldsBow && shieldsStern) {
    shieldsPort = true;
    shieldsBow = true;
    currentPP -= (requiredPPShields * 2);
    currentPPShieldsPort += requiredPPShields;
    currentPPShieldsBow += requiredPPShields;
} else if(!((requiredPPShields * 2) > currentPP) && !shieldsPort && !shieldsStarboard && shieldsBow && shieldsStern) {
    shieldsPort = true;
    shieldsStarboard = true;
    currentPP -= (requiredPPShields * 2);
    currentPPShieldsPort += requiredPPShields;
    currentPPShieldsStarboard += requiredPPShields;
} else if(!(requiredPPShields > currentPP) && !shieldsPort && shieldsStarboard && shieldsBow && shieldsStern) {
    shieldsPort = true;
    currentPP -= requiredPPShields;
    currentPPShieldsPort += requiredPPShields;
} else if(!(requiredPPShields > currentPP) && shieldsPort && !shieldsStarboard && shieldsBow && shieldsStern) {
    shieldsStarboard = true;
    currentPP -= requiredPPShields;
    currentPPShieldsStarboard += requiredPPShields;
} else if(!(requiredPPShields > currentPP) && shieldsPort && shieldsStarboard && !shieldsBow && shieldsStern) {
    shieldsBow = true;
    currentPP -= requiredPPShields;
    currentPPShieldsBow += requiredPPShields;
} else if(!(requiredPPShields > currentPP) && shieldsPort && shieldsStarboard && shieldsBow && !shieldsStern) {
    shieldsStern = true;
    currentPP -= requiredPPShields;
    currentPPShieldsStern += requiredPPShields;
} else if(!(shieldsPort && shieldsStarboard && shieldsBow && shieldsStern)) {
    //To Do: Error to user about lack of power...
}
script_execute(scrWipeToInitState);
