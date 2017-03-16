if(actionMap[? util.actionMapThrustersPortString] > 0) {
    currentPPThrustersPort = requiredPPThrusters;
} else {
    currentPPThrustersPort = 0;
}
if(actionMap[? util.actionMapThrustersStarboardString] > 0) {
    currentPPThrustersStarboard = requiredPPThrusters;
} else {
    currentPPThrustersStarboard = 0;
}
if(actionMap[? util.actionMapThrustersBowString] > 0) {
    currentPPThrustersBow = requiredPPThrusters;
} else {
    currentPPThrustersBow = 0;
}
if(actionMap[? util.actionMapThrustersSternString] > 0) {
    currentPPThrustersStern = requiredPPThrusters;
} else {
    currentPPThrustersStern = 0;
}
if(actionMap[? util.actionMapThrustersClockString] > 0) {
    currentPPThrustersRotateClockwise = requiredPPThrustersRotate;
} else {
    currentPPThrustersRotateClockwise = 0;
}
if(actionMap[? util.actionMapThrustersCountString] > 0) {
    currentPPThrustersRotateCounterclockwise = requiredPPThrustersRotate;
} else {
    currentPPThrustersRotateCounterclockwise = 0;
}
if(actionMap[? util.actionMapShieldsPortString] == active || actionMap[? util.actionMapShieldsPortString] == toActivate || actionMap[? util.actionMapShieldsPortString] == toDeactivate) {
    currentPPShieldsPort = requiredPPShields;
} else {
    currentPPShieldsPort = 0;
}
if(actionMap[? util.actionMapShieldsStarboardString] == active || actionMap[? util.actionMapShieldsStarboardString] == toActivate || actionMap[? util.actionMapShieldsStarboardString] == toDeactivate) {
    currentPPShieldsStarboard = requiredPPShields;
} else {
    currentPPShieldsStarboard = 0;
}
if(actionMap[? util.actionMapShieldsBowString] == active || actionMap[? util.actionMapShieldsBowString] == toActivate || actionMap[? util.actionMapShieldsBowString] == toDeactivate) {
    currentPPShieldsBow = requiredPPShields;
} else {
    currentPPShieldsBow = 0;
}
if(actionMap[? util.actionMapShieldsSternString] == active || actionMap[? util.actionMapShieldsSternString] == toActivate || actionMap[? util.actionMapShieldsSternString] == toDeactivate) {
    currentPPShieldsStern = requiredPPShields;
} else {
    currentPPShieldsStern = 0;
}
if(actionMap[? util.actionMapGunsString]) {
    currentPPGuns = requiredPPGuns;
} else {
    currentPPGuns = 0;
}
if(actionMap[? util.actionMapCannonString]) {
    currentPPCannon = requiredPPCannon;
} else if(currentPPCannon > 0) {
    currentPPCannon -= ((requiredPPCannon * util.difficultyModifier) / (hud.radarLowerBound - hud.radarUpperBound)) / 3;
} else {
    currentPPCannon = 0;
}
if(actionMap[? util.actionMapActiveString]) {
    currentPPActive = requiredPPActive;
} else if(currentPPActive > 0) {
    currentPPActive -= ((requiredPPActive * util.difficultyModifier) / (hud.radarLowerBound - hud.radarUpperBound)) / 2;
} else {
    currentPPActive = 0;
}
if(actionMap[? util.actionMapPassiveString] == active || actionMap[? util.actionMapPassiveString] == toActivate || actionMap[? util.actionMapPassiveString] == toDeactivate) {
    currentPPPassive = requiredPPPassive;
} else {
    currentPPPassive = 0;
}

percentPPThrusters = floor(((currentPPThrustersPort + currentPPThrustersStarboard + currentPPThrustersBow + currentPPThrustersStern + currentPPThrustersRotateClockwise + currentPPThrustersRotateCounterclockwise) / maxPP) * 100);
percentPPShields = floor(((currentPPShieldsPort + currentPPShieldsStarboard + currentPPShieldsBow + currentPPShieldsStern) / maxPP) * 100);
percentPPGuns = floor((currentPPGuns / maxPP) * 100);
percentPPCannon = floor((currentPPCannon / maxPP) * 100);
percentPPActive = floor((currentPPActive / maxPP) * 100);
percentPPPassive = floor((currentPPPassive / maxPP) * 100);

currentPP = maxPP - currentPPThrustersPort - currentPPThrustersStarboard -
            currentPPThrustersBow - currentPPThrustersStern - 
            currentPPThrustersRotateClockwise - 
            currentPPThrustersRotateCounterclockwise -
            currentPPShieldsPort - currentPPShieldsStarboard - currentPPShieldsBow -
            currentPPShieldsStern - currentPPGuns - currentPPCannon -
            currentPPActive - currentPPPassive;
if(object_index == objPawn) {
    show_debug_message(requiredPPThrustersRotate);
}
