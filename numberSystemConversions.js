"use strict";
/*
TODO
=======

1) Binary to Octal
2) Binary to Hexadecimal
3) Octal to Binary
4) Octal to Hexadecimal
5) Hexadecimal to Binary
6) Hexadecimal to Octal
7) Hexadecimal to Decimal
8) Decimal to Hexadecimal

*/
class Conversions {
  constructor() {

  }

  binToDecimal(binary) {
    let len = binary.length - 1; // 0 based
    let decimal = 0;
    for (let i = 0; i <= len; i++) {
      decimal += parseInt(binary[i]) * Math.pow(2, (len-i)); // Cmon node... get with the program, Vanilla can use **
    } return decimal;
  }

  binToOctal(binary) {

  }

  binToHex(binary) {

  }

  octalToBin(octal) {

  }

  octalToDecimal(octal) {
    let len = octal.length - 1; // 0 based
    let decimal = 0;
    for (let i = 0; i <= len; i++) {
      decimal += parseInt(octal[i]) * Math.pow(8, (len-i)); // Cmon node... get with the program, Vanilla can use **
    } return decimal;
  }

  octalToHex(octal) {

  }

  hexToBin(hex) {

  }

  hexToOctal(hex) {

  }

  hexToDecimal(hex) {

  }

  decimalToBin(decimal) {
    let num = parseInt(decimal);
    let bin = "";
    while(num >= 0) {
      if (num === 0){
        break;
      } else {
        let rem = num % 2;
        num = Math.floor(num/2);
        bin += rem;
      }
    } return bin.split("").reverse().join("");
  }

  decimalToOctal(decimal) {
    let num = parseInt(decimal);
    let octal = "";
    while(num >= 0) {
      if (num === 0){
        break;
      } else {
        let rem = num % 8;
        num = Math.floor(num/8);
        octal += rem;
      }
    } return octal.split("").reverse().join("");
  }

  decimalToHex(decimal) {

  }
}

/***************************/
/********** Tests **********/
/***************************/

const tester = new Conversions();
console.log(tester.binToDecimal("1100110") == 102);    // expected: 102
console.log(tester.octalToDecimal("76152") == 31850);  // expected: 31850
console.log(tester.decimalToBin(798) == "1100011110"); // expected: 1100011110
console.log(tester.decimalToOctal(123456) == 361100);  // expected: 361100
