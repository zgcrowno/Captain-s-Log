script_execute(scrWipeToInitState);
if(actionMap[? "Shields Port"] == active) {
    actionMap[? "Shields Port"] = toDeactivate;
} else if(actionMap[? "Shields Port"] == toActivate) {
    actionMap[? "Shields Port"] = inactive;
}
if(actionMap[? "Shields Starboard"] == active) {
    actionMap[? "Shields Starboard"] = toDeactivate;
} else if(actionMap[? "Shields Starboard"] == toActivate) {
    actionMap[? "Shields Starboard"] = inactive;
}
if(actionMap[? "Shields Bow"] == active) {
    actionMap[? "Shields Bow"] = toDeactivate;
} else if(actionMap[? "Shields Bow"] == toActivate) {
    actionMap[? "Shields Bow"] = inactive;
}
if(actionMap[? "Shields Stern"] == active) {
    actionMap[? "Shields Stern"] = toDeactivate;
} else if(actionMap[? "Shields Stern"] == toActivate) {
    actionMap[? "Shields Stern"] = inactive;
}
