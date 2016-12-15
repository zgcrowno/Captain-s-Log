script_execute(scrWipeToInitState);
if(actionMap[? "Shields Port"] == active) {
    actionMap[? "Shields Port"] = toDeactivate;
} else if(actionMap[? "Shields Port"] == toActivate) {
    actionMap[? "Shields Port"] = inactive;
}
