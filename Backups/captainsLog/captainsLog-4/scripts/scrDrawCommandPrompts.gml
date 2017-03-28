if(player.currentState == player.initState) {
    scrDrawInitStateCommandPrompts();
} else if(player.currentState == player.thrusterState) {
    scrDrawThrusterStateCommandPrompts();
} else if(player.currentState == player.shieldState) {
    scrDrawShieldStateCommandPrompts();
} else if(player.currentState == player.targetState) {
    scrDrawTargetStateCommandPrompts();
} else if(player.currentState == player.gunState) {
    draw_text(hud.commandsRightBound - string_width("Fire"), 
              hud.commandsUpperBound, 
              "Fire");
} else if(player.currentState == player.cannonState) {
    draw_text(hud.commandsRightBound - string_width("Fire"), 
              hud.commandsUpperBound, 
              "Fire");
} else if(player.currentState == player.cutState) {
    scrDrawCutStateCommandPrompts();
} else if(player.currentState == player.thrusterPortState) {
    draw_text(hud.commandsRightBound - string_width("[\#]"), 
              hud.commandsUpperBound, 
              "[\#]");
} else if(player.currentState == player.thrusterStarboardState) {
    draw_text(hud.commandsRightBound - string_width("[\#]"), 
              hud.commandsUpperBound, 
              "[\#]");
} else if(player.currentState == player.thrusterBowState) {
    draw_text(hud.commandsRightBound - string_width("[\#]"), 
              hud.commandsUpperBound, 
              "[\#]");
} else if(player.currentState == player.thrusterSternState) {
    draw_text(hud.commandsRightBound - string_width("[\#]"), 
              hud.commandsUpperBound, 
              "[\#]");
} else if(player.currentState == player.thrusterRotateState) {
    scrDrawThrusterRotateStateCommandPrompts();
} else if(player.currentState == player.thrusterRotateDegreesClockwiseState) {
    draw_text(hud.commandsRightBound - string_width("[\#]"), 
              hud.commandsUpperBound, 
              "[\#]");
} else if(player.currentState == player.thrusterRotateDegreesCounterclockwiseState) {
    draw_text(hud.commandsRightBound - string_width("[\#]"), 
              hud.commandsUpperBound, 
              "[\#]");
} else if(player.currentState == player.cutThrustersState) {
    scrDrawCutThrustersStateCommandPrompts();
} else if(player.currentState == player.cutThrustersRotateState) {
    scrDrawCutThrustersRotateStateCommandPrompts();
} else if(player.currentState == player.cutShieldsState) {
    scrDrawCutShieldsStateCommandPrompts();
}
