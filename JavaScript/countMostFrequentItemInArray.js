/* ===============
Find Count of Most Frequent Item in an Array
-------------------
Write a program to find count of the most frequent item of an array.

Assume that input is array of integers.

Ex.:

input array: [3, -1, -1, -1, 2, 3, -1, 3, -1, 2, 4, 9, 3]
ouptut: 5
=============== */

function mostFrequentItemCount(collection) {
  var freqCount = 0;
  var maxFreq = 0;
  for (var i = 0; i < collection.length; i++) {
    for (var j = i; j < collection.length; j++) {
      if (collection[i] === collection[j]) {
        freqCount++;
      }
      if (maxFreq < freqCount) {
        maxFreq = freqCount;
      }
    }
    freqCount = 0;
  }
  return maxFreq;
}
