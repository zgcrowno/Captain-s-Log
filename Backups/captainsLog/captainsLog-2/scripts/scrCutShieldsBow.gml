script_execute(scrWipeToInitState);
if(actionMap[? "Shields Bow"] == active) {
    actionMap[? "Shields Bow"] = toDeactivate;
} else if(actionMap[? "Shields Bow"] == toActivate) {
    actionMap[? "Shields Bow"] = inactive;
}
