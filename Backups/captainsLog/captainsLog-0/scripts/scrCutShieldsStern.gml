script_execute(scrWipeToInitState);
if(actionMap[? "Shields Stern"] == "Active") {
    actionMap[? "Shields Stern"] = "To Deactivate";
} else if(actionMap[? "Shields Stern"] == "To Activate") {
    actionMap[? "Shields Stern"] = "Inactive";
}
