actionMapDisplaySize = 0;
if(actionMap[? "Thrusters Port"] > 0
   || actionMap[? "Thrusters Starboard"] > 0
   || actionMap[? "Thrusters Bow"] > 0
   || actionMap[? "Thrusters Stern"] > 0
   || actionMap[? "Thrusters Count"] > 0
   || actionMap[? "Thrusters Clock"] > 0) {
    actionMapDisplaySize += 1;
    if(actionMap[? "Thrusters Port"] > 0) {
        actionMapDisplaySize += 1;
    }
    if(actionMap[? "Thrusters Starboard"] > 0) {
        actionMapDisplaySize += 1;
    }
    if(actionMap[? "Thrusters Bow"] > 0) {
        actionMapDisplaySize += 1;
    }
    if(actionMap[? "Thrusters Stern"] > 0) {
        actionMapDisplaySize += 1;
    }
    if(actionMap[? "Thrusters Count"] > 0) {
        actionMapDisplaySize += 1;
    }
    if(actionMap[? "Thrusters Clock"] > 0) {
        actionMapDisplaySize += 1;
    }
}
if(actionMap[? "Shields Port"] == toActivate || actionMap[? "Shields Port"] == toDeactivate
   || actionMap[? "Shields Starboard"] == toActivate || actionMap[? "Shields Starboard"] == toDeactivate
   || actionMap[? "Shields Bow"] == toActivate || actionMap[? "Shields Bow"] == toDeactivate
   || actionMap[? "Shields Stern"] == toActivate || actionMap[? "Shields Stern"] == toDeactivate) {
    actionMapDisplaySize += 1;
    if(actionMap[? "Shields Port"] == toActivate || actionMap[? "Shields Port"] == toDeactivate) {
        actionMapDisplaySize += 1;
    }
    if(actionMap[? "Shields Starboard"] == toActivate || actionMap[? "Shields Starboard"] == toDeactivate) {
        actionMapDisplaySize += 1;
    }
    if(actionMap[? "Shields Bow"] == toActivate || actionMap[? "Shields Bow"] == toDeactivate) {
        actionMapDisplaySize += 1;
    }
    if(actionMap[? "Shields Stern"] == toActivate || actionMap[? "Shields Stern"] == toDeactivate) {
        actionMapDisplaySize += 1;
    }
}
if(actionMap[? "Passive"] == toActivate || actionMap[? "Passive"] == toDeactivate) {
    actionMapDisplaySize += 2;
}
if(actionMap[? "Guns"]) {
    actionMapDisplaySize += 1;
}
if(actionMap[? "Cannon"]) {
    actionMapDisplaySize += 1;
}
if(actionMap[? "Active"]) {
    actionMapDisplaySize += 1;
}
return actionMapDisplaySize;
