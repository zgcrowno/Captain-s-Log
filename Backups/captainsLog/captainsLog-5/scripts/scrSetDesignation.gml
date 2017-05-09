while(designation == "") {
    designation = global.util.designationArray[random(array_length_1d(global.util.designationArray))];
}
for(i = 0; i < array_length_1d(global.util.designationArray); i++) {
    if(global.util.designationArray[i] == designation) {
        global.util.designationArray[i] = "";
        break;
    }
}
