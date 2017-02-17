if(x > (hud.radarRightBound - hud.radarLeftBound) || x < 0 
   || y > (hud.radarLowerBound - hud.radarUpperBound) || y < 0) {
    instance_destroy();
}
