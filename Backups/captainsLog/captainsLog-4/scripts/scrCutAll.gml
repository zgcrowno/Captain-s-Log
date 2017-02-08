if(actionMap[? "Thrusters Port"] > 0) {
    ds_list_delete(actionQueue, ds_list_find_index(actionQueue, "Thrst#Port#" + string(actionMap[? "Thrusters Port"])));
    actionMap[? "Thrusters Port"] = 0;
}
if(actionMap[? "Thrusters Starboard"] > 0) {
    ds_list_delete(actionQueue, ds_list_find_index(actionQueue, "Thrst#Star#" + string(actionMap[? "Thrusters Starboard"])));
    actionMap[? "Thrusters Starboard"] = 0;
}
if(actionMap[? "Thrusters Bow"] > 0) {
    ds_list_delete(actionQueue, ds_list_find_index(actionQueue, "Thrst#Bow#" + string(actionMap[? "Thrusters Bow"])));
    actionMap[? "Thrusters Bow"] = 0;
}
if(actionMap[? "Thrusters Stern"] > 0) {
    ds_list_delete(actionQueue, ds_list_find_index(actionQueue, "Thrst#Stern#" + string(actionMap[? "Thrusters Stern"])));
    actionMap[? "Thrusters Stern"] = 0;
}
if(actionMap[? "Thrusters Clock"] > 0) {
    ds_list_delete(actionQueue, ds_list_find_index(actionQueue, "Thrst#Clock#" + string(actionMap[? "Thrusters Clock"])));
    actionMap[? "Thrusters Clock"] = 0;
}
if(actionMap[? "Thrusters Count"] > 0) {
    ds_list_delete(actionQueue, ds_list_find_index(actionQueue, "Thrst#Count#" + string(actionMap[? "Thrusters Count"])));
    actionMap[? "Thrusters Count"] = 0;
}
if(actionMap[? "Shields Port"] == active) {
    actionMap[? "Shields Port"] = toDeactivate;
    ds_list_add(actionQueue, "Cut#Shields#Port");
} else if(actionMap[? "Shields Port"] == toActivate) {
    actionMap[? "Shields Port"] = inactive;
    ds_list_delete(actionQueue, ds_list_find_index(actionQueue, ds_list_find_index(actionQueue, "Shields#Port")));
}
if(actionMap[? "Shields Starboard"] == active) {
    actionMap[? "Shields Starboard"] = toDeactivate;
    ds_list_add(actionQueue, "Cut#Shields#Star");
} else if(actionMap[? "Shields Starboard"] == toActivate) {
    actionMap[? "Shields Starboard"] = inactive;
    ds_list_delete(actionQueue, ds_list_find_index(actionQueue, ds_list_find_index(actionQueue, "Shields#Star")));
}
if(actionMap[? "Shields Bow"] == active) {
    actionMap[? "Shields Bow"] = toDeactivate;
    ds_list_add(actionQueue, "Cut#Shields#Bow");
} else if(actionMap[? "Shields Bow"] == toActivate) {
    actionMap[? "Shields Bow"] = inactive;
    ds_list_delete(actionQueue, ds_list_find_index(actionQueue, ds_list_find_index(actionQueue, "Shields#Bow")));
}
if(actionMap[? "Shields Stern"] == active) {
    actionMap[? "Shields Stern"] = toDeactivate;
    ds_list_add(actionQueue, "Cut#Shields#Stern");
} else if(actionMap[? "Shields Stern"] == toActivate) {
    actionMap[? "Shields Stern"] = inactive;
    ds_list_delete(actionQueue, ds_list_find_index(actionQueue, ds_list_find_index(actionQueue, "Shields#Stern")));
}
if(actionMap[? "Guns"]) {
    actionMap[? "Guns"] = false;
    ds_list_delete(actionQueue, ds_list_find_index(actionQueue, "Guns"));
}
if(actionMap[? "Cannon"]) {
    actionMap[? "Cannon"] = false;
    ds_list_delete(actionQueue, ds_list_find_index(actionQueue, "Cannon"));
    currentPPCannon = 0;
}
if(actionMap[? "Active"]) {
    actionMap[? "Active"] = false;
    ds_list_delete(actionQueue, ds_list_find_index(actionQueue, "Active"));
    currentPPActive = 0;
}
if(actionMap[? "Passive"] == active) {
    actionMap[? "Passive"] = toDeactivate;
    ds_list_add(actionQueue, "Cut#Passive");
} else if(actionMap[? "Passive"] == toActivate) {
    actionMap[? "Passive"] = inactive;
    ds_list_delete(actionQueue, ds_list_find_index(actionQueue, ds_list_find_index(actionQueue, "Passive")));
}
if(actionMap[? "Target"] != noone) {
    actionMap[? "Target"] = noone;
}
if(target != noone) {
    target = noone;
}
script_execute(scrWipeToInitState);
