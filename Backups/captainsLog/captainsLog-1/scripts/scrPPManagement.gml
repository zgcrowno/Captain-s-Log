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
if(actionMap[? "Shields Port"] == active || actionMap[? "Shields Port"] == toActivate || actionMap[? "Shields Port"] == toDeactivate) {
    currentPPShieldsPort = requiredPPShields;
} else {
    currentPPShieldsPort = 0;
}
if(actionMap[? "Shields Starboard"] == active || actionMap[? "Shields Starboard"] == toActivate || actionMap[? "Shields Starboard"] == toDeactivate) {
    currentPPShieldsStarboard = requiredPPShields;
} else {
    currentPPShieldsStarboard = 0;
}
if(actionMap[? "Shields Bow"] == active || actionMap[? "Shields Bow"] == toActivate || actionMap[? "Shields Bow"] == toDeactivate) {
    currentPPShieldsBow = requiredPPShields;
} else {
    currentPPShieldsBow = 0;
}
if(actionMap[? "Shields Stern"] == active || actionMap[? "Shields Stern"] == toActivate || actionMap[? "Shields Stern"] == toDeactivate) {
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
} else if(currentPPCannon > 0) {
    currentPPCannon -= ((requiredPPCannon * util.difficultyModifier) / (hud.playAreaLowerBound - hud.playAreaUpperBound)) / 3;
} else {
    currentPPCannon = 0;
}
if(actionMap[? "Active"]) {
    currentPPActive = requiredPPActive;
} else if(currentPPActive > 0) {
    currentPPActive -= ((requiredPPActive * util.difficultyModifier) / (hud.playAreaLowerBound - hud.playAreaUpperBound)) / 2;
} else {
    currentPPActive = 0;
}
if(actionMap[? "Passive"] == active || actionMap[? "Passive"] == toActivate || actionMap[? "Passive"] == toDeactivate) {
    currentPPPassive = requiredPPPassive;
} else {
    currentPPPassive = 0;
}

percentPPThrusters = ((currentPPThrustersPort + currentPPThrustersStarboard + currentPPThrustersBow + currentPPThrustersStern + currentPPThrustersRotateClockwise + currentPPThrustersRotateCounterclockwise) / maxPP) * 100;
percentPPShields = ((currentPPShieldsPort + currentPPShieldsStarboard + currentPPShieldsBow + currentPPShieldsStern) / maxPP) * 100;
percentPPGuns = (currentPPGuns / maxPP) * 100;
percentPPCannon = (currentPPCannon / maxPP) * 100;
percentPPActive = (currentPPActive / maxPP) * 100;
percentPPPassive = (currentPPPassive / maxPP) * 100;

currentPP = maxPP - currentPPThrustersPort - currentPPThrustersStarboard -
            currentPPThrustersBow - currentPPThrustersStern - 
            currentPPThrustersRotateClockwise - 
            currentPPThrustersRotateCounterclockwise -
            currentPPShieldsPort - currentPPShieldsStarboard - currentPPShieldsBow -
            currentPPShieldsStern - currentPPGuns - currentPPCannon -
            currentPPActive - currentPPPassive;
