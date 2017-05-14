if(global.player.currentState == global.player.initState) {
    scrDrawInitStateCommandPrompts();
} else if(global.player.currentState == global.player.thrusterState) {
    scrDrawThrusterStateCommandPrompts();
} else if(global.player.currentState == global.player.shieldState) {
    scrDrawShieldStateCommandPrompts();
} else if(global.player.currentState == global.player.targetState) {
    scrDrawTargetStateCommandPrompts();
} else if(global.player.currentState == global.player.gunState) {
    draw_text(global.hud.commandsRightBound - string_width(global.util.fireString), 
              global.hud.commandsUpperBound, 
              global.util.fireString);
} else if(global.player.currentState == global.player.cannonState) {
    draw_text(global.hud.commandsRightBound - string_width(global.util.fireString), 
              global.hud.commandsUpperBound, 
              global.util.fireString);
} else if(global.player.currentState == global.player.cutState) {
    scrDrawCutStateCommandPrompts();
} else if(global.player.currentState == global.player.thrusterPortState) {
    draw_text(global.hud.commandsRightBound - string_width(global.util.poundString), 
              global.hud.commandsUpperBound, 
              global.util.poundString);
} else if(global.player.currentState == global.player.thrusterStarboardState) {
    draw_text(global.hud.commandsRightBound - string_width(global.util.poundString), 
              global.hud.commandsUpperBound, 
              global.util.poundString);
} else if(global.player.currentState == global.player.thrusterBowState) {
    draw_text(global.hud.commandsRightBound - string_width(global.util.poundString), 
              global.hud.commandsUpperBound, 
              global.util.poundString);
} else if(global.player.currentState == global.player.thrusterSternState) {
    draw_text(global.hud.commandsRightBound - string_width(global.util.poundString), 
              global.hud.commandsUpperBound, 
              global.util.poundString);
} else if(global.player.currentState == global.player.thrusterRotateState) {
    scrDrawThrusterRotateStateCommandPrompts();
} else if(global.player.currentState == global.player.thrusterRotateDegreesClockwiseState) {
    draw_text(global.hud.commandsRightBound - string_width(global.util.poundString), 
              global.hud.commandsUpperBound, 
              global.util.poundString);
} else if(global.player.currentState == global.player.thrusterRotateDegreesCounterclockwiseState) {
    draw_text(global.hud.commandsRightBound - string_width(global.util.poundString), 
              global.hud.commandsUpperBound, 
              global.util.poundString);
} else if(global.player.currentState == global.player.activeState) {
    scrDrawActiveStateCommandPrompts();
} else if(global.player.currentState == global.player.cutThrustersState) {
    scrDrawCutThrustersStateCommandPrompts();
} else if(global.player.currentState == global.player.cutThrustersRotateState) {
    scrDrawCutThrustersRotateStateCommandPrompts();
} else if(global.player.currentState == global.player.cutShieldsState) {
    scrDrawCutShieldsStateCommandPrompts();
}
