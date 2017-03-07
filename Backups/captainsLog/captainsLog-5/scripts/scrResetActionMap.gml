//Keep an eye on this script. A large portion of it may end up being removed,
//as it's most likely executed earlier on in scrTimelineActions.
scrDecrementAction(util.actionMapThrustersPortString, util.actionQueueThrustersPortString);
scrDecrementAction(util.actionMapThrustersStarboardString, util.actionQueueThrustersStarboardString);
scrDecrementAction(util.actionMapThrustersBowString, util.actionQueueThrustersBowString);
scrDecrementAction(util.actionMapThrustersSternString, util.actionQueueThrustersSternString);
scrDecrementAction(util.actionMapThrustersCountString, util.actionQueueThrustersCountString);
scrDecrementAction(util.actionMapThrustersClockString, util.actionQueueThrustersClockString);

scrChangeStateAction(util.actionMapShieldsPortString, util.actionQueueShieldsPortString, util.actionQueueCutShieldsPortString);
scrChangeStateAction(util.actionMapShieldsStarboardString, util.actionQueueShieldsStarboardString, util.actionQueueCutShieldsStarboardString);
scrChangeStateAction(util.actionMapShieldsBowString, util.actionQueueShieldsBowString, util.actionQueueCutShieldsBowString);
scrChangeStateAction(util.actionMapShieldsSternString, util.actionQueueShieldsSternString, util.actionQueueCutShieldsSternString);
scrChangeStateAction(util.actionMapPassiveString, util.actionQueuePassiveString, util.actionQueueCutPassiveString);

actionMap[? util.actionMapGunsString] = false;
if(ds_list_find_index(actionQueue, util.actionMapGunsString) != -1) {
    ds_list_delete(actionQueue, ds_list_find_index(actionQueue, util.actionMapGunsString));
}

actionMap[? util.actionMapCannonString] = false;
if(ds_list_find_index(actionQueue, util.actionMapCannonString) != -1) {
    ds_list_delete(actionQueue, ds_list_find_index(actionQueue, util.actionMapCannonString));
}

actionMap[? util.actionMapActiveString] = false;
if(ds_list_find_index(actionQueue, util.actionMapActiveString) != -1) {
    ds_list_delete(actionQueue, ds_list_find_index(actionQueue, util.actionMapActiveString));
}

actionMap[? util.actionMapTargetString] = noone;
