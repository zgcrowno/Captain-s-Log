if(thrustersPort) {
    currentPP += requiredPPThrusters;
    currentPPThrustersPort -= requiredPPThrustersRotate;
    actionMap[? "Thrusters Port"] = 0;
}
if(thrustersStarboard) {
    currentPP += requiredPPThrusters;
    currentPPThrustersStarboard -= requiredPPThrusters;
    actionMap[? "Thrusters Starboard"] = 0;
}
if(thrustersBow) {
    currentPP += requiredPPThrusters;
    currentPPThrustersBow -= requiredPPThrusters;
    actionMap[? "Thrusters Bow"] = 0;
}
if(thrustersStern) {
    currentPP += requiredPPThrusters;
    currentPPThrustersStern -= requiredPPThrusters;
    actionMap[? "Thrusters Stern"] = 0;
}
if(thrustersRotateClockwise) {
    currentPP += requiredPPThrustersRotate;
    currentPPThrustersRotateClockwise -= requiredPPThrustersRotate;
    actionMap[? "Thrusters Clock"] = 0;
}
if(thrustersRotateCounterclockwise) {
    currentPP += requiredPPThrustersRotate;
    currentPPThrustersRotateCounterclockwise -= requiredPPThrustersRotate;
    actionMap[? "Thrusters Count"] = 0;
}
if(shieldsPort) {
    currentPP += requiredPPShields;
    currentPPShieldsPort -= requiredPPShields;
    actionMap[? "Shields Port"] = false;
} 
if(shieldsStarboard) {
    currentPP += requiredPPShields;
    currentPPShieldsStarboard -= requiredPPShields;
    actionMap[? "Shields Starboard"] = false;
} 
if(shieldsBow) {
    currentPP += requiredPPShields;
    currentPPShieldsBow -= requiredPPShields;
    actionMap[? "Shields Bow"] = false;
}
if(shieldsStern) {
    currentPP += requiredPPShields;
    currentPPShieldsStern -= requiredPPShields;
    actionMap[? "Shields Stern"] = false;
}
if(guns) {
    currentPP += requiredPPGuns;
    currentPPGuns -= requiredPPGuns;
    bulletTimer = 0;
    actionMap[? "Guns"] = false;
}
if(cannon) {
    currentPP += requiredPPCannon;
    currentPPCannon -= requiredPPCannon;
    actionMap[? "Cannon"] = false;
}
script_execute(scrWipeToInitState);
thrustersPort = false;
thrustersStarboard = false;
thrustersBow = false;
thrustersStern = false;
thrustersRotateClockwise = false;
thrustersRotateCounterclockwise = false;
shieldsPort = false;
shieldsStarboard = false;
shieldsBow = false;
shieldsStern = false;
guns = false;
cannon = false;
