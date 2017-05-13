var distance = argument0;

scrSetState(initState);
scrAddAction(global.util.actionMapThrustersBowString, global.util.actionQueueThrustersBowString, currentHPThrustersBow, distance);
