# ==================
# Find The Parity Outlier
# -----------------------
# You are given an array (which will have a length of at least 3, but could be very large) containing integers. The array is either entirely comprised of odd integers or entirely comprised of even integers except for a single integer N. Write a method that takes the array as an argument and returns N.
#
# For example:
#
# [2, 4, 0, 100, 4, 11, 2602, 36]
# Should return: 11
# [160, 3, 1719, 19, 11, 13, -21]
# Should return: 160
# ==================

def find_outlier(integers)
  even_count = 0
  odd_count = 0
  integers.each do |int|
    int % 2 == 0 ? even_count += 1 : odd_count += 1
  end
  even_count > odd_count ? is_even = true : is_even = false
  if is_even
    integers.select {|e| e % 2 != 0}.first
  else
    integers.select {|e| e % 2 == 0}.first
  end
end
