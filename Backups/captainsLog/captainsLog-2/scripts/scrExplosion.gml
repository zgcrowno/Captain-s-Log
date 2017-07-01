effect_create_above(ef_explosion, 
                    global.hud.primeMeridian - ((((global.player.x - x) * view_wview[global.util.hudView]) / (global.hud.radarRightBound - global.hud.radarLeftBound)) * (view_wview[global.util.hudView] / (global.hud.radarRightBound - global.hud.radarLeftBound))), 
                    global.hud.enemyBackgroundSpriteY, 
                    2, 
                    c_red);
