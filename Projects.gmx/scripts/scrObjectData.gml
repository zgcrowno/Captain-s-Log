//The timeline object
timeline = instance_find(objTimeline, 0);

//The Hud object
hud = instance_find(objHud, 0);

//Create the action map
actionMap = ds_map_create();

//Whether or not the object has made contact with the timeline on the current pass
touchedTimeline = false;
