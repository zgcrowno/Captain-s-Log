script_execute(scrWipeToInitState);
if(actionMap[? "Passive"] == active) {
    actionMap[? "Passive"] = toDeactivate;
} else if(actionMap[? "Passive"] == toActivate) {
    actionMap[? "Passive"] = inactive;
}
