script_execute(scrWipeToInitState);
if(actionMap[? "Shields Starboard"] == active) {
    actionMap[? "Shields Starboard"] = toDeactivate;
} else if(actionMap[? "Shields Starboard"] == toActivate) {
    actionMap[? "Shields Starboard"] = inactive;
}
