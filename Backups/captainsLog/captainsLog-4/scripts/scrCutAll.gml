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
if(actionMap[? "Shields Port"] == "Active") {
    actionMap[? "Shields Port"] = "To Deactivate";
} else if(actionMap[? "Shields Port"] == "To Activate") {
    actionMap[? "Shields Port"] = "Inactive";
}
if(actionMap[? "Shields Starboard"] == "Active") {
    actionMap[? "Shields Starboard"] = "To Deactivate";
} else if(actionMap[? "Shields Starboard"] == "To Activate") {
    actionMap[? "Shields Starboard"] = "Inactive";
}
if(actionMap[? "Shields Bow"] == "Active") {
    actionMap[? "Shields Bow"] = "To Deactivate";
} else if(actionMap[? "Shields Bow"] == "To Activate") {
    actionMap[? "Shields Bow"] = "Inactive";
}
if(actionMap[? "Shields Stern"] == "Active") {
    actionMap[? "Shields Stern"] = "To Deactivate";
} else if(actionMap[? "Shields Stern"] == "To Activate") {
    actionMap[? "Shields Stern"] = "Inactive";
}
if(actionMap[? "Guns"]) {
    actionMap[? "Guns"] = false;
}
if(actionMap[? "Cannon"]) {
    actionMap[? "Cannon"] = false;
}
script_execute(scrWipeToInitState);
