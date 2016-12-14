script_execute(scrWipeToInitState);
if(actionMap[? "Shields Bow"] == "Active") {
    actionMap[? "Shields Bow"] = "To Deactivate";
} else if(actionMap[? "Shields Bow"] == "To Activate") {
    actionMap[? "Shields Bow"] = "Inactive";
}
