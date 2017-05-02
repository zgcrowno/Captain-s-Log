if(actionMap[? util.actionMapPassiveString] == active) {
    if(currentHPShieldsPort < maxHPShieldsPort) {
        currentHPShieldsPort += 0.05;
    } else {
        currentHPShieldsPort = maxHPShieldsPort;
    }
    if(currentHPShieldsStarboard < maxHPShieldsStarboard) {
        currentHPShieldsStarboard += 0.05;
    } else {
        currentHPShieldsStarboard = maxHPShieldsStarboard;
    }
    if(currentHPShieldsBow < maxHPShieldsBow) {
        currentHPShieldsBow += 0.05;
    } else {
        currentHPShieldsBow = maxHPShieldsBow;
    }
    if(currentHPShieldsStern < maxHPShieldsStern) {
        currentHPShieldsStern += 0.05;
    } else {
        currentHPShieldsStern = maxHPShieldsStern;
    }
}
