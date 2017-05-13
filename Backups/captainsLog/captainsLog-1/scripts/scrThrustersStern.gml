var distance = argument0;

scrSetState(initState);
scrAddAction(global.util.actionMapThrustersSternString, global.util.actionQueueThrustersSternString, currentHPThrustersStern, distance);
