//Keep an eye on this script. A large portion of it may end up being removed,
//as it's most likely executed earlier on in scrTimelineActions.
scrDecrementAction(global.util.actionMapThrustersPortString, global.util.actionQueueThrustersPortString, false);
scrDecrementAction(global.util.actionMapThrustersStarboardString, global.util.actionQueueThrustersStarboardString, false);
scrDecrementAction(global.util.actionMapThrustersBowString, global.util.actionQueueThrustersBowString, false);
scrDecrementAction(global.util.actionMapThrustersSternString, global.util.actionQueueThrustersSternString, false);
scrDecrementAction(global.util.actionMapThrustersCountString, global.util.actionQueueThrustersCountString, false);
scrDecrementAction(global.util.actionMapThrustersClockString, global.util.actionQueueThrustersClockString, false);

if(actionMap[? global.util.actionMapShieldsPortString] == toActivate || actionMap[? global.util.actionMapShieldsPortString] == toDeactivate) {
    show_debug_message(24);
    scrChangeStateAction(global.util.actionMapShieldsPortString, global.util.actionQueueShieldsPortString, global.util.actionQueueCutShieldsPortString);
}
if(actionMap[? global.util.actionMapShieldsStarboardString] == toActivate || actionMap[? global.util.actionMapShieldsStarboardString] == toDeactivate) {
    show_debug_message(25);
    scrChangeStateAction(global.util.actionMapShieldsStarboardString, global.util.actionQueueShieldsStarboardString, global.util.actionQueueCutShieldsStarboardString);
}
if(actionMap[? global.util.actionMapShieldsBowString] == toActivate || actionMap[? global.util.actionMapShieldsBowString] == toDeactivate) {
    show_debug_message(26);
    scrChangeStateAction(global.util.actionMapShieldsBowString, global.util.actionQueueShieldsBowString, global.util.actionQueueCutShieldsBowString);
}
if(actionMap[? global.util.actionMapShieldsSternString] == toActivate || actionMap[? global.util.actionMapShieldsSternString] == toDeactivate) {
    show_debug_message(27);
    scrChangeStateAction(global.util.actionMapShieldsSternString, global.util.actionQueueShieldsSternString, global.util.actionQueueCutShieldsSternString);
}
if(actionMap[? global.util.actionMapPassiveString] == toActivate || actionMap[? global.util.actionMapPassiveString] == toDeactivate) {
    scrChangeStateAction(global.util.actionMapPassiveString, global.util.actionQueuePassiveString, global.util.actionQueueCutPassiveString);
}

if(actionMap[? global.util.actionMapGunsString] = true) {
    scrChangeStateAction(global.util.actionMapGunsString, noone, noone);
}

if(actionMap[? global.util.actionMapCannonString] = true) {
    scrChangeStateAction(global.util.actionMapCannonString, noone, noone);
}

actionMap[? global.util.actionMapTargetString] = noone;
