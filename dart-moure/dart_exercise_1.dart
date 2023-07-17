void main() {
  /*Exercise 1:
  * 
  * Develope a program to calculate the shipping cost base on the
  * destination zone and the weight of the package
  * (you will be provided) 
  * 
  * Calculate the shipping cost according to these conditions:
  * if the destination zone is 'XYZ' the shipping cost is $5 per kilogram.
  * if the destination zone is 'ABC' the shipping cost is $7 per kilogram.
  * if the destination zone is 'PQR' the shipping cost is $10 per kilogram.
  * if the destination zone is not 'XYZ', 'ABC' or 'PQR', display an error message.
  *  
  * 
  * */

  String destinationZone = 'PQR';
  double weightKgs = 6.0;
  double? shipping;

  switch (destinationZone) {
    case 'XYZ':
      shipping = weightKgs * 5;
    case 'ABC':
      shipping = weightKgs * 7;
    case 'PQR':
      shipping = weightKgs * 10;
    default:
      print('Invalid destination zone');
  }
  print('Shipping cost: \$$shipping');
}
