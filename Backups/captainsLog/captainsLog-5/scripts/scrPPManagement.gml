if(actionMap[? "Thrusters Port"] > 0) {
    currentPPThrustersPort = requiredPPThrusters;
}
if(actionMap[? "Thrusters Starboard"] > 0) {
    currentPPThrustersStarboard = requiredPPThrusters;
}
if(actionMap[? "Thrusters Bow"] > 0) {
    currentPPThrustersBow = requiredPPThrusters;
}
if(actionMap[? "Thrusters Stern"] > 0) {
    currentPPThrustersStern = requiredPPThrusters;
}
if(actionMap[? "Thrusters Clock"] > 0) {
    currentPPThrustersRotateClockwise = requiredPPThrustersRotate;
}
if(actionMap[? "Thrusters Count"] > 0) {
    currentPPThrustersRotateCounterclockwise = requiredPPThrustersRotate;
}
if(actionMap[? "Shields Port"]) {
    currentPPShieldsPort = requiredPPShields;
}
if(actionMap[? "Shields Starboard"]) {
    currentPPShieldsStarboard = requiredPPShields;
}
if(actionMap[? "Shields Bow"]) {
    currentPPShieldsBow = requiredPPShields;
}
if(actionMap[? "Shields Stern"]) {
    currentPPShieldsStern = requiredPPShields;
}
if(actionMap[? "Guns"]) {
    currentPPGuns = requiredPPGuns;
}
if(actionMap[? "Cannon"]) {
    currentPPCannon = requiredPPCannon;
}

currentPP = maxPP - currentPPThrustersPort - currentPPThrustersStarboard -
            currentPPThrustersBow - currentPPThrustersStern - 
            currentPPThrustersRotateClockwise - 
            currentPPThrustersRotateCounterclockwise -
            currentPPShieldsPort - currentPPShieldsStarboard - currentPPShieldsBow -
            currentPPShieldsStern - currentPPGuns - currentPPCannon;
