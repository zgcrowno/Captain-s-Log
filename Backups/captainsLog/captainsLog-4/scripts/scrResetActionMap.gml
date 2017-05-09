//Keep an eye on this script. A large portion of it may end up being removed,
//as it's most likely executed earlier on in scrTimelineActions.
scrDecrementAction(global.util.actionMapThrustersPortString, global.util.actionQueueThrustersPortString);
scrDecrementAction(global.util.actionMapThrustersStarboardString, global.util.actionQueueThrustersStarboardString);
scrDecrementAction(global.util.actionMapThrustersBowString, global.util.actionQueueThrustersBowString);
scrDecrementAction(global.util.actionMapThrustersSternString, global.util.actionQueueThrustersSternString);
scrDecrementAction(global.util.actionMapThrustersCountString, global.util.actionQueueThrustersCountString);
scrDecrementAction(global.util.actionMapThrustersClockString, global.util.actionQueueThrustersClockString);

scrChangeStateAction(global.util.actionMapShieldsPortString, global.util.actionQueueShieldsPortString, global.util.actionQueueCutShieldsPortString);
scrChangeStateAction(global.util.actionMapShieldsStarboardString, global.util.actionQueueShieldsStarboardString, global.util.actionQueueCutShieldsStarboardString);
scrChangeStateAction(global.util.actionMapShieldsBowString, global.util.actionQueueShieldsBowString, global.util.actionQueueCutShieldsBowString);
scrChangeStateAction(global.util.actionMapShieldsSternString, global.util.actionQueueShieldsSternString, global.util.actionQueueCutShieldsSternString);
scrChangeStateAction(global.util.actionMapPassiveString, global.util.actionQueuePassiveString, global.util.actionQueueCutPassiveString);

actionMap[? global.util.actionMapGunsString] = false;
if(ds_list_find_index(actionQueue, global.util.actionMapGunsString) != -1) {
    ds_list_delete(actionQueue, ds_list_find_index(actionQueue, global.util.actionMapGunsString));
}

actionMap[? global.util.actionMapCannonString] = false;
if(ds_list_find_index(actionQueue, global.util.actionMapCannonString) != -1) {
    ds_list_delete(actionQueue, ds_list_find_index(actionQueue, global.util.actionMapCannonString));
}

actionMap[? global.util.actionMapTargetString] = noone;
