if(x > hud.playAreaRightBound || x < hud.playAreaLeftBound 
   || y > hud.playAreaLowerBound || y < hud.playAreaUpperBound) {
    instance_destroy();
}
