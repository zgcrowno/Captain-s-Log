if(actionMap[? "Thrusters Port"] > 0) {
    actionMap[? "Thrusters Port"] = 0;
}
if(actionMap[? "Thrusters Starboard"] > 0) {
    actionMap[? "Thrusters Starboard"] = 0;
}
if(actionMap[? "Thrusters Bow"] > 0) {
    actionMap[? "Thrusters Bow"] = 0;
}
if(actionMap[? "Thrusters Stern"] > 0) {
    actionMap[? "Thrusters Stern"] = 0;
}
if(actionMap[? "Thrusters Clock"] > 0) {
    actionMap[? "Thrusters Clock"] = 0;
}
if(actionMap[? "Thrusters Count"] > 0) {
    actionMap[? "Thrusters Count"] = 0;
}
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
if(actionMap[? "Guns"]) {
    actionMap[? "Guns"] = false;
}
if(actionMap[? "Cannon"]) {
    actionMap[? "Cannon"] = false;
    currentPPCannon = 0;
}
if(actionMap[? "Active"]) {
    actionMap[? "Active"] = false;
    currentPPActive = 0;
}
if(actionMap[? "Passive"] == active) {
    actionMap[? "Passive"] = toDeactivate;
} else if(actionMap[? "Passive"] == toActivate) {
    actionMap[? "Passive"] = inactive;
}
if(actionMap[? "Target"] != noone) {
    actionMap[? "Target"] = noone;
}
if(target != noone) {
    target = noone;
}
script_execute(scrWipeToInitState);
