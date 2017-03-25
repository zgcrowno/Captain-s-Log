//The horizontal timeline object
timelineHorizontal = instance_find(objTimelineHorizontal, 0);

//The vertical timeline object
timelineVertical = instance_find(objTimelineVertical, 0);

//The Hud object
hud = instance_find(objHud, 0);

//The Util object
util = instance_find(objUtil, 0);

//All of the gridBoxes in the room
allGridBoxes = scrGetGridBoxes();

//Whether or not the object has made contact with the timeline on the current pass
alreadyTouchedTimeline = false;
