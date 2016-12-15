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
if(actionMap[? "Shields Port"] == "To Activate") {
    actionMap[? "Shields Port"] = "Active";
} else if(actionMap[? "Shields Port"] == "To Deactivate") {
    actionMap[? "Shields Port"] = "Inactive";
}
if(actionMap[? "Shields Starboard"] == "To Activate") {
    actionMap[? "Shields Starboard"] = "Active";
} else if(actionMap[? "Shields Starboard"] == "To Deactivate") {
    actionMap[? "Shields Starboard"] = "Inactive";
}
if(actionMap[? "Shields Bow"] == "To Activate") {
    actionMap[? "Shields Bow"] = "Active";
} else if(actionMap[? "Shields Bow"] == "To Deactivate") {
    actionMap[? "Shields Bow"] = "Inactive";
}
if(actionMap[? "Shields Stern"] == "To Activate") {
    actionMap[? "Shields Stern"] = "Active";
} else if(actionMap[? "Shields Stern"] == "To Deactivate") {
    actionMap[? "Shields Stern"] = "Inactive";
}
actionMap[? "Target"] = null;
actionMap[? "Guns"] = false;
actionMap[? "Cannon"] = false;
actionMap[? "Active"] = false;
actionMap[? "Passive"] = false;
