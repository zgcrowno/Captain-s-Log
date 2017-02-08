if(actionMap[? "Thrusters Port"] > 0) {
    if(actionMap[? "Thrusters Port"] == 1) {
        ds_list_delete(actionQueue, ds_list_find_index(actionQueue, "Thrst#Port#" + string(actionMap[? "Thrusters Port"])));
    } else {
        actionQueue[| ds_list_find_index(actionQueue, "Thrst#Port#" + string(actionMap[? "Thrusters Port"]))] = "Thrst#Port#" + string(actionMap[? "Thrusters Port"] - 1);
    }
    actionMap[? "Thrusters Port"]--;
}
if(actionMap[? "Thrusters Starboard"] > 0) {
    if(actionMap[? "Thrusters Starboard"] == 1) {
        ds_list_delete(actionQueue, ds_list_find_index(actionQueue, "Thrst#Star#" + string(actionMap[? "Thrusters Starboard"])));
    } else {
        actionQueue[| ds_list_find_index(actionQueue, "Thrst#Star#" + string(actionMap[? "Thrusters Starboard"]))] = "Thrst#Star#" + string(actionMap[? "Thrusters Starboard"] - 1);
    }
    actionMap[? "Thrusters Starboard"]--;
}
if(actionMap[? "Thrusters Bow"] > 0) {
    if(actionMap[? "Thrusters Bow"] == 1) {
        ds_list_delete(actionQueue, ds_list_find_index(actionQueue, "Thrst#Bow#" + string(actionMap[? "Thrusters Bow"])));
    } else {
        actionQueue[| ds_list_find_index(actionQueue, "Thrst#Bow#" + string(actionMap[? "Thrusters Bow"]))] = "Thrst#Bow#" + string(actionMap[? "Thrusters Bow"] - 1);
    }
    actionMap[? "Thrusters Bow"]--;
}
if(actionMap[? "Thrusters Stern"] > 0) {
    if(actionMap[? "Thrusters Stern"] == 1) {
        ds_list_delete(actionQueue, ds_list_find_index(actionQueue, "Thrst#Stern#" + string(actionMap[? "Thrusters Stern"])));
    } else {
        actionQueue[| ds_list_find_index(actionQueue, "Thrst#Stern#" + string(actionMap[? "Thrusters Stern"]))] = "Thrst#Stern#" + string(actionMap[? "Thrusters Stern"] - 1);
    }
    actionMap[? "Thrusters Stern"]--;
}
if(actionMap[? "Thrusters Count"] > 0) {
    if(actionMap[? "Thrusters Count"] == 1) {
        ds_list_delete(actionQueue, ds_list_find_index(actionQueue, "Thrst#Count#" + string(actionMap[? "Thrusters Count"])));
    } else {
        actionQueue[| ds_list_find_index(actionQueue, "Thrst#Count#" + string(actionMap[? "Thrusters Count"]))] = "Thrst#Count#" + string(actionMap[? "Thrusters Count"] - 1);
    }
    actionMap[? "Thrusters Count"]--;
}
if(actionMap[? "Thrusters Clock"] > 0) {
    if(actionMap[? "Thrusters Clock"] == 1) {
        ds_list_delete(actionQueue, ds_list_find_index(actionQueue, "Thrst#Clock#" + string(actionMap[? "Thrusters Clock"])));
    } else {
        actionQueue[| ds_list_find_index(actionQueue, "Thrst#Clock#" + string(actionMap[? "Thrusters Clock"]))] = "Thrst#Clock#" + string(actionMap[? "Thrusters Clock"] - 1);
    }
    actionMap[? "Thrusters Clock"]--;
}
if(actionMap[? "Shields Port"] == toActivate) {
    actionMap[? "Shields Port"] = active;
    if(ds_list_find_index(actionQueue, "Shields#Port") != -1) {
        ds_list_delete(actionQueue, ds_list_find_index(actionQueue, "Shields#Port"));
    }
} else if(actionMap[? "Shields Port"] == toDeactivate) {
    actionMap[? "Shields Port"] = inactive;
    if(ds_list_find_index(actionQueue, "Cut#Shields#Port") != -1) {
        ds_list_delete(actionQueue, ds_list_find_index(actionQueue, "Cut#Shields#Port"));
    }
}
if(actionMap[? "Shields Starboard"] == toActivate) {
    actionMap[? "Shields Starboard"] = active;
    if(ds_list_find_index(actionQueue, "Shields#Star") != -1) {
        ds_list_delete(actionQueue, ds_list_find_index(actionQueue, "Shields#Star"));
    }
} else if(actionMap[? "Shields Starboard"] == toDeactivate) {
    actionMap[? "Shields Starboard"] = inactive;
    if(ds_list_find_index(actionQueue, "Cut#Shields#Star") != -1) {
        ds_list_delete(actionQueue, ds_list_find_index(actionQueue, "Cut#Shields#Star"));
    }
}
if(actionMap[? "Shields Bow"] == toActivate) {
    actionMap[? "Shields Bow"] = active;
    if(ds_list_find_index(actionQueue, "Shields#Bow") != -1) {
        ds_list_delete(actionQueue, ds_list_find_index(actionQueue, "Shields#Bow"));
    }
} else if(actionMap[? "Shields Bow"] == toDeactivate) {
    actionMap[? "Shields Bow"] = inactive;
    if(ds_list_find_index(actionQueue, "Cut#Shields#Bow") != -1) {
        ds_list_delete(actionQueue, ds_list_find_index(actionQueue, "Cut#Shields#Bow"));
    }
}
if(actionMap[? "Shields Stern"] == toActivate) {
    actionMap[? "Shields Stern"] = active;
    if(ds_list_find_index(actionQueue, "Shields#Stern") != -1) {
        ds_list_delete(actionQueue, ds_list_find_index(actionQueue, "Shields#Stern"));
    }
} else if(actionMap[? "Shields Stern"] == toDeactivate) {
    actionMap[? "Shields Stern"] = inactive;
    if(ds_list_find_index(actionQueue, "Cut#Shields#Stern") != -1) {
        ds_list_delete(actionQueue, ds_list_find_index(actionQueue, "Cut#Shields#Stern"));
    }
}
if(actionMap[? "Passive"] == toActivate) {
    actionMap[? "Passive"] = active;
    show_debug_message(ds_list_find_index(actionQueue, "Passive"));
    if(ds_list_find_index(actionQueue, "Passive") != -1) {
        ds_list_delete(actionQueue, ds_list_find_index(actionQueue, "Passive"));
    }
} else if(actionMap[? "Passive"] == toDeactivate) {
    actionMap[? "Passive"] = inactive;
    if(ds_list_find_index(actionQueue, "Cut#Passive") != -1) {
        ds_list_delete(actionQueue, ds_list_find_index(actionQueue, "Cut#Passive"));
    }
}
actionMap[? "Guns"] = false;
if(ds_list_find_index(actionQueue, "Guns") != -1) {
    ds_list_delete(actionQueue, ds_list_find_index(actionQueue, "Guns"));
}
actionMap[? "Cannon"] = false;
if(ds_list_find_index(actionQueue, "Cannon") != -1) {
    ds_list_delete(actionQueue, ds_list_find_index(actionQueue, "Cannon"));
}
actionMap[? "Active"] = false;
if(ds_list_find_index(actionQueue, "Active") != -1) {
    ds_list_delete(actionQueue, ds_list_find_index(actionQueue, "Active"));
}
actionMap[? "Target"] = noone;
