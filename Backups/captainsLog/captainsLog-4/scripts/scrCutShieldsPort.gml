script_execute(scrWipeToInitState);
if(actionMap[? "Shields Port"] == "Active") {
    actionMap[? "Shields Port"] = "To Deactivate";
} else if(actionMap[? "Shields Port"] == "To Activate") {
    actionMap[? "Shields Port"] = "Inactive";
}
