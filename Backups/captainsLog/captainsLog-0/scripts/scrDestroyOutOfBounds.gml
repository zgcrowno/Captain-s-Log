if(x > hud.radarRightBound || x < hud.radarLeftBound 
   || y > hud.radarLowerBound || y < hud.radarUpperBound) {
    instance_destroy();
}
