draw_healthbar(global.hud.thrustersRightBound - 60, 
               global.hud.thrustersUpperBound + ((global.hud.thrustersLowerBound - global.hud.thrustersUpperBound) / 2), 
               global.hud.thrustersRightBound - 45, 
               global.hud.thrustersUpperBound + ((global.hud.thrustersLowerBound - global.hud.thrustersUpperBound) / 2) + 15, 
               (global.player.currentPPThrustersRotateClockwise / global.player.requiredPPThrustersRotate) * 100, 
               c_black, 
               c_teal, 
               c_teal, 
               3, 
               false, 
               false);
draw_set_color(c_teal);
draw_line(global.hud.thrustersRotateClockPPLeftBound,
          global.hud.thrustersRotateClockPPUpperBound,
          global.hud.thrustersRotateClockPPLeftBound,
          global.hud.thrustersRotateClockPPLowerBound);
draw_line(global.hud.thrustersRotateClockPPRightBound,
          global.hud.thrustersRotateClockPPUpperBound,
          global.hud.thrustersRotateClockPPRightBound,
          global.hud.thrustersRotateClockPPLowerBound);
draw_line(global.hud.thrustersRotateClockPPLeftBound,
          global.hud.thrustersRotateClockPPUpperBound,
          global.hud.thrustersRotateClockPPRightBound,
          global.hud.thrustersRotateClockPPUpperBound);
draw_line(global.hud.thrustersRotateClockPPLeftBound,
          global.hud.thrustersRotateClockPPLowerBound,
          global.hud.thrustersRotateClockPPRightBound,
          global.hud.thrustersRotateClockPPLowerBound);
draw_set_color(c_white);
