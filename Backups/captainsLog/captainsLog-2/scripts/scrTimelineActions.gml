if(script_execute(scrIsTouchingTimeline) && !touchedTimeline) {
    script_execute(scrMovement);
    script_execute(scrResetNonShield);
    script_execute(scrSetShields);
    script_execute(scrAttackGuns);
    script_execute(scrResetActionMap);
    touchedTimeline = true;
}
