draw_healthbar(hud.shieldsStarboardHPLeftBound, 
               hud.shieldsStarboardHPUpperBound, 
               hud.shieldsStarboardHPRightBound, 
               hud.shieldsStarboardHPLowerBound, 
               (player.currentHPShieldsStarboard / player.maxHPShieldsStarboard) * 100, 
               c_black, 
               c_maroon, 
               c_maroon, 
               3, 
               false, 
               false);
draw_set_color(c_maroon);
draw_line(hud.shieldsStarboardHPLeftBound,
          hud.shieldsStarboardHPUpperBound,
          hud.shieldsStarboardHPLeftBound,
          hud.shieldsStarboardHPLowerBound);
draw_line(hud.shieldsStarboardHPRightBound,
          hud.shieldsStarboardHPUpperBound,
          hud.shieldsStarboardHPRightBound,
          hud.shieldsStarboardHPLowerBound);
draw_line(hud.shieldsStarboardHPLeftBound,
          hud.shieldsStarboardHPUpperBound,
          hud.shieldsStarboardHPRightBound,
          hud.shieldsStarboardHPUpperBound);
draw_line(hud.shieldsStarboardHPLeftBound,
          hud.shieldsStarboardHPLowerBound,
          hud.shieldsStarboardHPRightBound,
          hud.shieldsStarboardHPLowerBound);
draw_healthbar(hud.shieldsStarboardPPLeftBound, 
               hud.shieldsStarboardPPUpperBound, 
               hud.shieldsStarboardPPRightBound, 
               hud.shieldsStarboardPPLowerBound, 
               (player.currentPPShieldsStarboard / player.requiredPPShields) * 100, 
               c_black, 
               c_teal, 
               c_teal, 
               3, 
               false, 
               false);
draw_set_color(c_teal);
draw_line(hud.shieldsStarboardPPLeftBound,
          hud.shieldsStarboardPPUpperBound,
          hud.shieldsStarboardPPLeftBound,
          hud.shieldsStarboardPPLowerBound);
draw_line(hud.shieldsStarboardPPRightBound,
          hud.shieldsStarboardPPUpperBound,
          hud.shieldsStarboardPPRightBound,
          hud.shieldsStarboardPPLowerBound);
draw_line(hud.shieldsStarboardPPLeftBound,
          hud.shieldsStarboardPPUpperBound,
          hud.shieldsStarboardPPRightBound,
          hud.shieldsStarboardPPUpperBound);
draw_line(hud.shieldsStarboardPPLeftBound,
          hud.shieldsStarboardPPLowerBound,
          hud.shieldsStarboardPPRightBound,
          hud.shieldsStarboardPPLowerBound);
draw_set_color(c_white);
draw_line(hud.shieldsStarboardHPLeftBound,
          hud.shieldsStarboardHPLowerBound,
          hud.shieldsLeftBound + ((hud.shieldsRightBound - hud.shieldsLeftBound) / 2) + (player.sprite_width / 2),
          hud.shieldsUpperBound + ((hud.shieldsLowerBound - hud.shieldsUpperBound) / 2));
