if(actionMap[? "Thrusters Port"] > 0) {
    currentPPThrustersPort = requiredPPThrusters;
} else {
    currentPPThrustersPort = 0;
}
if(actionMap[? "Thrusters Starboard"] > 0) {
    currentPPThrustersStarboard = requiredPPThrusters;
} else {
    currentPPThrustersStarboard = 0;
}
if(actionMap[? "Thrusters Bow"] > 0) {
    currentPPThrustersBow = requiredPPThrusters;
} else {
    currentPPThrustersBow = 0;
}
if(actionMap[? "Thrusters Stern"] > 0) {
    currentPPThrustersStern = requiredPPThrusters;
} else {
    currentPPThrustersStern = 0;
}
if(actionMap[? "Thrusters Clock"] > 0) {
    currentPPThrustersRotateClockwise = requiredPPThrustersRotate;
} else {
    currentPPThrustersRotateClockwise = 0;
}
if(actionMap[? "Thrusters Count"] > 0) {
    currentPPThrustersRotateCounterclockwise = requiredPPThrustersRotate;
} else {
    currentPPThrustersRotateCounterclockwise = 0;
}
if(actionMap[? "Shields Port"]) {
    currentPPShieldsPort = requiredPPShields;
} else {
    currentPPShieldsPort = 0;
}
if(actionMap[? "Shields Starboard"]) {
    currentPPShieldsStarboard = requiredPPShields;
} else {
    currentPPShieldsStarboard = 0;
}
if(actionMap[? "Shields Bow"]) {
    currentPPShieldsBow = requiredPPShields;
} else {
    currentPPShieldsBow = 0;
}
if(actionMap[? "Shields Stern"]) {
    currentPPShieldsStern = requiredPPShields;
} else {
    currentPPShieldsStern = 0;
}
if(actionMap[? "Guns"]) {
    currentPPGuns = requiredPPGuns;
} else {
    currentPPGuns = 0;
}
if(actionMap[? "Cannon"]) {
    currentPPCannon = requiredPPCannon;
} else {
    currentPPCannon = 0;
}

currentPP = maxPP - currentPPThrustersPort - currentPPThrustersStarboard -
            currentPPThrustersBow - currentPPThrustersStern - 
            currentPPThrustersRotateClockwise - 
            currentPPThrustersRotateCounterclockwise -
            currentPPShieldsPort - currentPPShieldsStarboard - currentPPShieldsBow -
            currentPPShieldsStern - currentPPGuns - currentPPCannon;
