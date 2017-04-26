draw_healthbar(hud.thrustersRightBound - 60, 
               hud.thrustersUpperBound + ((hud.thrustersLowerBound - hud.thrustersUpperBound) / 2), 
               hud.thrustersRightBound - 45, 
               hud.thrustersUpperBound + ((hud.thrustersLowerBound - hud.thrustersUpperBound) / 2) + 15, 
               (player.currentPPThrustersRotateClockwise / player.requiredPPThrustersRotate) * 100, 
               c_black, 
               c_teal, 
               c_teal, 
               3, 
               false, 
               false);
draw_set_color(c_teal);
draw_line(hud.thrustersRotateClockPPLeftBound,
          hud.thrustersRotateClockPPUpperBound,
          hud.thrustersRotateClockPPLeftBound,
          hud.thrustersRotateClockPPLowerBound);
draw_line(hud.thrustersRotateClockPPRightBound,
          hud.thrustersRotateClockPPUpperBound,
          hud.thrustersRotateClockPPRightBound,
          hud.thrustersRotateClockPPLowerBound);
draw_line(hud.thrustersRotateClockPPLeftBound,
          hud.thrustersRotateClockPPUpperBound,
          hud.thrustersRotateClockPPRightBound,
          hud.thrustersRotateClockPPUpperBound);
draw_line(hud.thrustersRotateClockPPLeftBound,
          hud.thrustersRotateClockPPLowerBound,
          hud.thrustersRotateClockPPRightBound,
          hud.thrustersRotateClockPPLowerBound);
draw_set_color(c_white);
