if(actionMap[? "Thrusters Port"] > 0) {
    actionMap[? "Thrusters Port"]--;
}
if(actionMap[? "Thrusters Starboard"] > 0) {
    actionMap[? "Thrusters Starboard"]--;
}
if(actionMap[? "Thrusters Bow"] > 0) {
    actionMap[? "Thrusters Bow"]--;
}
if(actionMap[? "Thrusters Stern"] > 0) {
    actionMap[? "Thrusters Stern"]--;
}
if(actionMap[? "Thrusters Count"] > 0) {
    actionMap[? "Thrusters Count"]--;
}
if(actionMap[? "Thrusters Clock"] > 0) {
    actionMap[? "Thrusters Clock"]--;
}
if(actionMap[? "Shields Port"] == toActivate) {
    actionMap[? "Shields Port"] = active;
} else if(actionMap[? "Shields Port"] == toDeactivate) {
    actionMap[? "Shields Port"] = inactive;
}
if(actionMap[? "Shields Starboard"] == toActivate) {
    actionMap[? "Shields Starboard"] = active;
} else if(actionMap[? "Shields Starboard"] == toDeactivate) {
    actionMap[? "Shields Starboard"] = inactive;
}
if(actionMap[? "Shields Bow"] == toActivate) {
    actionMap[? "Shields Bow"] = active;
} else if(actionMap[? "Shields Bow"] == toDeactivate) {
    actionMap[? "Shields Bow"] = inactive;
}
if(actionMap[? "Shields Stern"] == toActivate) {
    actionMap[? "Shields Stern"] = active;
} else if(actionMap[? "Shields Stern"] == toDeactivate) {
    actionMap[? "Shields Stern"] = inactive;
}
if(actionMap[? "Passive"] == toActivate) {
    actionMap[? "Passive"] = active;
} else if(actionMap[? "Passive"] == toDeactivate) {
    actionMap[? "Passive"] = inactive;
}
actionMap[? "Target"] = null;
actionMap[? "Guns"] = false;
actionMap[? "Cannon"] = false;
actionMap[? "Active"] = false;
