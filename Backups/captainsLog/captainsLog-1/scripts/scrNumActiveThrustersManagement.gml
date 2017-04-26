if(thrustersPort && thrustersStarboard && thrustersBow && thrustersStern) {
    numActiveThrusters = 4;
} else if(thrustersPort && thrustersStarboard && thrustersBow && !thrustersStern) {
    numActiveThrusters = 3;
} else if(thrustersPort && thrustersStarboard && !thrustersBow && thrustersStern) {
    numActiveThrusters = 3;
} else if(thrustersPort && !thrustersStarboard && thrustersBow && thrustersStern) {
    numActiveThrusters = 3;
} else if(!thrustersPort && thrustersStarboard && thrustersBow && thrustersStern) {
    numActiveThrusters = 3;
} else if(thrustersPort && thrustersStarboard && !thrustersBow && !thrustersStern) {
    numActiveThrusters = 2;
} else if(thrustersPort && !thrustersStarboard && thrustersBow && !thrustersStern) {
    numActiveThrusters = 2;
} else if(!thrustersPort && thrustersStarboard && thrustersBow && !thrustersStern) {
    numActiveThrusters = 2;
} else if(thrustersPort && !thrustersStarboard && !thrustersBow && thrustersStern) {
    numActiveThrusters = 2;
} else if(!thrustersPort && thrustersStarboard && !thrustersBow && thrustersStern) {
    numActiveThrusters = 2;
} else if(!thrustersPort && !thrustersStarboard && thrustersBow && thrustersStern) {
    numActiveThrusters = 2;
} else if(thrustersPort && !thrustersStarboard && !thrustersBow && !thrustersStern) {
    numActiveThrusters = 1;
} else if(!thrustersPort && thrustersStarboard && !thrustersBow && !thrustersStern) {
    numActiveThrusters = 1;
} else if(!thrustersPort && !thrustersStarboard && thrustersBow && !thrustersStern) {
    numActiveThrusters = 1;
} else if(!thrustersPort && !thrustersStarboard && !thrustersBow && thrustersStern) {
    numActiveThrusters = 1;
} else {
    numActiveThrusters = 0;
}
