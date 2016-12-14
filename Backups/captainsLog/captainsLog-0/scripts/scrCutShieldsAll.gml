script_execute(scrWipeToInitState);
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
