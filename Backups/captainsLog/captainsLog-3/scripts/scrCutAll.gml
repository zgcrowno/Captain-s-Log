if(thrustersPort) {
    currentPP += requiredPPThrusters;
    currentPPThrustersPort -= requiredPPThrustersRotate;
}
if(thrustersStarboard) {
    currentPP += requiredPPThrusters;
    currentPPThrustersStarboard -= requiredPPThrusters;
}
if(thrustersBow) {
    currentPP += requiredPPThrusters;
    currentPPThrustersBow -= requiredPPThrusters;
}
if(thrustersStern) {
    currentPP += requiredPPThrusters;
    currentPPThrustersStern -= requiredPPThrusters;
}
if(thrustersRotateClockwise) {
    currentPP += requiredPPThrustersRotate;
    currentPPThrustersRotateClockwise -= requiredPPThrustersRotate;
}
if(thrustersRotateCounterclockwise) {
    currentPP += requiredPPThrustersRotate;
    currentPPThrustersRotateCounterclockwise -= requiredPPThrustersRotate;
}
if(shieldsPort) {
    currentPP += requiredPPShields;
    currentPPShieldsPort -= requiredPPShields;
} 
if(shieldsStarboard) {
    currentPP += requiredPPShields;
    currentPPShieldsStarboard -= requiredPPShields;
} 
if(shieldsBow) {
    currentPP += requiredPPShields;
    currentPPShieldsBow -= requiredPPShields;
}
if(shieldsStern) {
    currentPP += requiredPPShields;
    currentPPShieldsStern -= requiredPPShields;
}
if(guns) {
    currentPP += requiredPPGuns;
    currentPPGuns -= requiredPPGuns;
    bulletTimer = 0;
}
if(cannon) {
    currentPP += requiredPPCannon;
    currentPPCannon -= requiredPPCannon;
}
if(thrustersPort || thrustersStarboard || thrustersBow || thrustersStern
   || thrustersRotateClockwise || thrustersRotateCounterclockwise
   || shieldsPort || shieldsStarboard || shieldsBow || shieldsStern
   || guns || cannon) {
    actionMap[? "Cut All"] = true;
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
