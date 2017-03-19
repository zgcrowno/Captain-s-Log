//Movement Behavior
if(random(10000) >= 6000) {
    if(scrIsAbove(player)) {
        if(scrIsFacingUp(self)) {
            if(distance_to_point(player.x, y) < distance_to_point(x, player.y)) {
                if(scrIsLeft(player)) {
                    if(actionMap[? util.actionMapThrustersStarboardString] == 0) {
                        if(random(10) >= 3) {
                            scrThrustersStarboard(irandom_range(1, floor(distance_to_point(player.x, y) / sprite_get_width(sprGridBox))));
                        }
                    }
                } else if(scrIsRight(player)) {
                    if(actionMap[? util.actionMapThrustersPortString] == 0) {
                        if(random(10) >= 3) {
                            scrThrustersPort(irandom_range(1, floor(distance_to_point(player.x, y) / sprite_get_width(sprGridBox))));
                        }
                    }
                }
            } else {
                if(scrIsLeft(player)) {
                    if(actionMap[? util.actionMapThrustersCountString] == 0) {
                        if(random(10) >= 3) {
                            scrThrustersRotateCounterclockwise(1);
                        }
                    }
                } else if(scrIsRight(player)) {
                    if(actionMap[? util.actionMapThrustersClockString] == 0) {
                        if(random(10) >= 3) {
                            scrThrustersRotateClockwise(1);
                        }
                    }
                }
            }
        } else if(scrIsFacingRight(self)) {
            if(actionMap[? util.actionMapThrustersStarboardString] == 0) {
                if(random(10) >= 3) {
                    scrThrustersRotateCounterclockwise(1);
                }
            }
        } else if(scrIsFacingDown(self)) {
            if(random(10) >= 5) {
                if(actionMap[? util.actionMapThrustersClockString] == 0) {
                    scrThrustersRotateClockwise(2);
                }
            } else {
                if(actionMap[? util.actionMapThrustersCountString] == 0) {
                    scrThrustersRotateCounterclockwise(2);
                }
            }
        } else if(scrIsFacingLeft(self)) {
            if(actionMap[? util.actionMapThrustersClockString] == 0) {
                if(random(10) >= 3) {
                    scrThrustersRotateClockwise(1);
                }
            }
        }    
    } else if(scrIsBelow(player)) {
        if(scrIsFacingUp(self)) {
            if(random(10) >= 5) {
                if(actionMap[? util.actionMapThrustersClockString] == 0) {
                    scrThrustersRotateClockwise(2);
                }
            } else {
                if(actionMap[? util.actionMapThrustersCountString] == 0) {
                    scrThrustersRotateCounterclockwise(2);
                }
            }
        } else if(scrIsFacingRight(self)) {
            if(actionMap[? util.actionMapThrustersClockString] == 0) {
                if(random(10) >= 3) {
                    scrThrustersRotateClockwise(1);
                }
            }
        } else if(scrIsFacingDown(self)) {
            if(distance_to_point(player.x, y) < distance_to_point(x, player.y)) {
                if(scrIsLeft(player)) {
                    if(actionMap[? util.actionMapThrustersPortString] == 0) {
                        if(random(10) >= 3) {
                            scrThrustersPort(irandom_range(1, floor(distance_to_point(player.x, y) / sprite_get_width(sprGridBox))));
                        }
                    }
                } else if(scrIsRight(player)) {
                    if(actionMap[? util.actionMapThrustersStarboardString] == 0) {
                        if(random(10) >= 3) {
                            scrThrustersStarboard(irandom_range(1, floor(distance_to_point(player.x, y) / sprite_get_width(sprGridBox))));
                        }
                    }
                }
            } else {
                if(scrIsLeft(player)) {
                    if(actionMap[? util.actionMapThrustersClockString] == 0) {
                        if(random(10) >= 3) {
                            scrThrustersRotateClockwise(1);
                        }
                    }
                } else if(scrIsRight(player)) {
                    if(actionMap[? util.actionMapThrustersCountString] == 0) {
                        if(random(10) >= 3) {
                            scrThrustersRotateCounterclockwise(1);
                        }
                    }
                }
            }
        } else if(scrIsFacingLeft(self)) {
            if(actionMap[? util.actionMapThrustersCountString] == 0) {
                if(random(10) >= 3) {
                    scrThrustersRotateCounterclockwise(1);
                }
            }
        }
    } else if(scrIsLeft(player)) {
        if(scrIsFacingUp(self)) {
            if(actionMap[? util.actionMapThrustersCountString] == 0) {
                if(random(10) >= 3) {
                    scrThrustersRotateCounterclockwise(1);
                }
            }
        } else if(scrIsFacingRight(self)) {
            if(random(10) >= 5) {
                if(actionMap[? util.actionMapThrustersClockString] == 0) {
                    scrThrustersRotateClockwise(2);
                }
            } else {
                if(actionMap[? util.actionMapThrustersCountString] == 0) {
                    scrThrustersRotateCounterclockwise(2);
                }
            }
        } else if(scrIsFacingDown(self)) {
            if(actionMap[? util.actionMapThrustersClockString] == 0) {
                if(random(10) >= 3) {
                    scrThrustersRotateClockwise(1);
                }
            }
        } else if(scrIsFacingLeft(self)) {
            if(distance_to_point(player.x, y) > distance_to_point(x, player.y)) {
                if(scrIsAbove(player)) {
                    if(actionMap[? util.actionMapThrustersPortString] == 0) {
                        if(random(10) >= 3) {
                            scrThrustersPort(irandom_range(1, floor(distance_to_point(x, player.y) / sprite_get_width(sprGridBox))));
                        }
                    }
                } else if(scrIsBelow(player)) {
                    if(actionMap[? util.actionMapThrustersStarboardString] == 0) {
                        if(random(10) >= 3) {
                            scrThrustersStarboard(irandom_range(1, floor(distance_to_point(x, player.y) / sprite_get_width(sprGridBox))));
                        }
                    }
                }
            } else {
                if(scrIsAbove(player)) {
                    if(actionMap[? util.actionMapThrustersClockString] == 0) {
                        if(random(10) >= 3) {
                            scrThrustersRotateClockwise(1);
                        }
                    }
                } else if(scrIsBelow(player)) {
                    if(actionMap[? util.actionMapThrustersCountString] == 0) {
                        if(random(10) >= 3) {
                            scrThrustersRotateCounterclockwise(1);
                        }
                    }
                }
            }
        }
    } else {
        if(scrIsFacingUp(self)) {
            if(actionMap[? util.actionMapThrustersClockString] == 0) {
                if(random(10) >= 3) {
                    scrThrustersRotateClockwise(1);
                }
            }
        } else if(scrIsFacingRight(self)) {
            if(distance_to_point(player.x, y) > distance_to_point(x, player.y)) {
                if(scrIsAbove(player)) {
                    if(actionMap[? util.actionMapThrustersStarboardString] == 0) {
                        if(random(10) >= 3) {
                            scrThrustersStarboard(irandom_range(1, floor(distance_to_point(x, player.y) / sprite_get_width(sprGridBox))));
                        }
                    }
                } else if(scrIsBelow(player)) {
                    if(actionMap[? util.actionMapThrustersPortString] == 0) {
                        if(random(10) >= 3) {
                            scrThrustersPort(irandom_range(1, floor(distance_to_point(x, player.y) / sprite_get_width(sprGridBox))));
                        }
                    }
                }
            } else {
                if(scrIsAbove(player)) {
                    if(actionMap[? util.actionMapThrustersCountString] == 0) {
                        if(random(10) >= 3) {
                            scrThrustersRotateCounterclockwise(1);
                        }
                    }
                } else if(scrIsBelow(player)) {
                    if(actionMap[? util.actionMapThrustersClockString] == 0) {
                        if(random(10) >= 3) {
                            scrThrustersRotateClockwise(1);
                        }
                    }
                }
            }
        } else if(scrIsFacingDown(self)) {
            if(actionMap[? util.actionMapThrustersCountString] == 0) {
                if(random(10) >= 3) {
                    scrThrustersRotateCounterclockwise(1);
                }
            }
        } else if(scrIsFacingLeft(self)) {
            if(random(10) >= 5) {
                if(actionMap[? util.actionMapThrustersClockString] == 0) {
                    scrThrustersRotateClockwise(2);
                }
            } else {
                if(actionMap[? util.actionMapThrustersCountString] == 0) {
                    scrThrustersRotateCounterclockwise(2);
                }
            }
        }
    }
}

//Guns Behavior
if(random(10) >= 6) {
    if(scrIsAbove(player)) {
        if(scrIsFacingUp(self)) {
            if(!actionMap[? util.actionMapGunsString]) {
                if(random(10) >= 3) {
                    scrGunsDivertPower();
                }
            }
        }
    } else if(scrIsBelow(player)) {
        if(scrIsFacingDown(self)) {
            if(!actionMap[? util.actionMapGunsString]) {
                if(random(10) >= 3) {
                    scrGunsDivertPower();
                }
            }
        }
    } else if(scrIsLeft(player)) {
        if(scrIsFacingLeft(self)) {
            if(!actionMap[? util.actionMapGunsString]) {
                if(random(10) >= 3) {
                    scrGunsDivertPower();
                }
            }
        }
    } else {
        if(scrIsFacingRight(self)) {
            if(!actionMap[? util.actionMapGunsString]) {
                if(random(10) >= 3) {
                    scrGunsDivertPower();
                }
            }
        }
    }
}
