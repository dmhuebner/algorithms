/* ===============
Find The Parity Outlier
-------------------
You are given an array (which will have a length of at least 3, but could be very large) containing integers. The array is either entirely comprised of odd integers or entirely comprised of even integers except for a single integer N. Write a method that takes the array as an argument and returns N.

For example:

[2, 4, 0, 100, 4, 11, 2602, 36]
Should return: 11
[160, 3, 1719, 19, 11, 13, -21]
Should return: 160
=============== */

function findOutlier(integers){
  var countOdd = 0;
  var countEven = 0;
  var isEven;
  for (var i = 0; i < 3; i++) {
    integers[i] % 2 == 0 ? countEven += 1 : countOdd += 1;
  }
  countEven > countOdd ? isEven = true : isEven = false;
  var findBy = function(n) {
    if (isEven === true) {
      return n % 2 !== 0;
    } else {
      return n % 2 == 0;
    }
  };
  return integers.find(findBy);
}
