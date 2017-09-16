# ==================
# Find Count of Most Frequent Item in an Array
# -----------------------
# Write a program to find count of the most frequent item of an array.
#
# Assume that input is array of integers.
#
# Ex.:
#
# input array: [3, -1, -1, -1, 2, 3, -1, 3, -1, 2, 4, 9, 3]
# ouptut: 5
# ==================


def most_frequent_item_count(collection)
  numFrequencies = Hash.new
  freqCount = 0

  collection.each do |item|
    unless numFrequencies[item]
      numFrequencies[item] = 1
    else
      numFrequencies[item] += 1
    end
  end

  numFrequencies.each do |k, v|
    freqCount = numFrequencies[k] if v == numFrequencies.values.max
  end
  return freqCount
end
