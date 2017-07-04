if(x > global.hud.radarLeftBound
   && x < global.hud.radarRightBound
   && y > global.hud.radarUpperBound
   && y < global.hud.radarLowerBound) {
    instance_create(x, y, objExplosion);
}
