if(x > (global.hud.radarRightBound - global.hud.radarLeftBound) || x < 0 
   || y > (global.hud.radarLowerBound - global.hud.radarUpperBound) || y < 0) {
    instance_destroy();
}
