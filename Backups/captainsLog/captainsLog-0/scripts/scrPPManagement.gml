if(actionMap[? global.util.actionMapThrustersPortString] > 0) {
    currentPPThrustersPort = requiredPPThrusters;
} else {
    currentPPThrustersPort = 0;
}

if(actionMap[? global.util.actionMapThrustersStarboardString] > 0) {
    currentPPThrustersStarboard = requiredPPThrusters;
} else {
    currentPPThrustersStarboard = 0;
}

if(actionMap[? global.util.actionMapThrustersBowString] > 0) {
    currentPPThrustersBow = requiredPPThrusters;
} else {
    currentPPThrustersBow = 0;
}

if(actionMap[? global.util.actionMapThrustersSternString] > 0) {
    currentPPThrustersStern = requiredPPThrusters;
} else {
    currentPPThrustersStern = 0;
}

if(actionMap[? global.util.actionMapThrustersClockString] > 0) {
    currentPPThrustersRotateClockwise = requiredPPThrustersRotate;
} else {
    currentPPThrustersRotateClockwise = 0;
}

if(actionMap[? global.util.actionMapThrustersCountString] > 0) {
    currentPPThrustersRotateCounterclockwise = requiredPPThrustersRotate;
} else {
    currentPPThrustersRotateCounterclockwise = 0;
}

if(actionMap[? global.util.actionMapShieldsPortString] == active || actionMap[? global.util.actionMapShieldsPortString] == toActivate || actionMap[? global.util.actionMapShieldsPortString] == toDeactivate) {
    currentPPShieldsPort = requiredPPShields;
} else {
    currentPPShieldsPort = 0;
}

if(actionMap[? global.util.actionMapShieldsStarboardString] == active || actionMap[? global.util.actionMapShieldsStarboardString] == toActivate || actionMap[? global.util.actionMapShieldsStarboardString] == toDeactivate) {
    currentPPShieldsStarboard = requiredPPShields;
} else {
    currentPPShieldsStarboard = 0;
}

if(actionMap[? global.util.actionMapShieldsBowString] == active || actionMap[? global.util.actionMapShieldsBowString] == toActivate || actionMap[? global.util.actionMapShieldsBowString] == toDeactivate) {
    currentPPShieldsBow = requiredPPShields;
} else {
    currentPPShieldsBow = 0;
}

if(actionMap[? global.util.actionMapShieldsSternString] == active || actionMap[? global.util.actionMapShieldsSternString] == toActivate || actionMap[? global.util.actionMapShieldsSternString] == toDeactivate) {
    currentPPShieldsStern = requiredPPShields;
} else {
    currentPPShieldsStern = 0;
}

if(actionMap[? global.util.actionMapGunsString]) {
    currentPPGuns = requiredPPGuns;
} else {
    currentPPGuns = 0;
}

if(actionMap[? global.util.actionMapCannonString]) {
    currentPPCannon = requiredPPCannon;
} else if(currentPPCannon > 0) {
    currentPPCannon -= ((requiredPPCannon * global.util.difficultyModifier) / (global.hud.radarLowerBound - global.hud.radarUpperBound)) / 3;
} else {
    currentPPCannon = 0;
}

if(currentPPActive > 0) {
    currentPPActive -= ((requiredPPActive * global.util.difficultyModifier) / (global.hud.radarLowerBound - global.hud.radarUpperBound)) / 2;
} else {
    currentPPActive = 0;
}

if(actionMap[? global.util.actionMapPassiveString] == active || actionMap[? global.util.actionMapPassiveString] == toActivate || actionMap[? global.util.actionMapPassiveString] == toDeactivate) {
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
