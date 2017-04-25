if(room == rmFoundationalPrinciples) {
    draw_text(0, 0, scrFormatString(foundationalPrinciples.identityDescription));
    draw_text(0, string_height("0"), scrFormatString(foundationalPrinciples.identityFormula));
    
    draw_text(0, 2 * string_height("0"), scrFormatString(foundationalPrinciples.nonContradictionDescription));
    draw_text(0, 3 * string_height("0"), scrFormatString(foundationalPrinciples.nonContradictionFormula));
    
    draw_text(0, 4 * string_height("0"), scrFormatString(foundationalPrinciples.excludedMiddleDescription));
    draw_text(0, 5 * string_height("0"), scrFormatString(foundationalPrinciples.excludedMiddleFormula));
}
