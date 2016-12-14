script_execute(scrWipeToInitState);
if(actionMap[? "Shields Starboard"] == "Active") {
    actionMap[? "Shields Starboard"] = "To Deactivate";
} else if(actionMap[? "Shields Starboard"] == "To Activate") {
    actionMap[? "Shields Starboard"] = "Inactive";
}
