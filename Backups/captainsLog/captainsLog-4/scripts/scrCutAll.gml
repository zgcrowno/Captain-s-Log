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
if(actionMap[? "Shields Port"]) {
    actionMap[? "Shields Port"] = false;
} 
if(actionMap[? "Shields Starboard"]) {
    actionMap[? "Shields Starboard"] = false;
} 
if(actionMap[? "Shields Bow"]) {
    actionMap[? "Shields Bow"] = false;
}
if(actionMap[? "Shields Stern"]) {
    actionMap[? "Shields Stern"] = false;
}
if(actionMap[? "Guns"]) {
    actionMap[? "Guns"] = false;
}
if(actionMap[? "Cannon"]) {
    actionMap[? "Cannon"] = false;
}
script_execute(scrWipeToInitState);
