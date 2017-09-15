# ==================
# Format a string of names
# -----------------------
# Given: an array containing hashes of names
#
# Return: a string formatted as a list of names separated by commas except for the last two names, which should be separated by an ampersand.
#
# Example:
#
# list([ {name: 'Bart'}, {name: 'Lisa'}, {name: 'Maggie'} ])
# # returns 'Bart, Lisa & Maggie'
#
# list([ {name: 'Bart'}, {name: 'Lisa'} ])
# # returns 'Bart & Lisa'
#
# list([ {name: 'Bart'} ])
# # returns 'Bart'
#
# list([])
# # returns ''
# ==================

def list(names)
  output = ""
  if names.count == 1
    output = names[0][:name]
  else
    names.each do |arrItem|
      if arrItem == names[names.length-2]
        output += arrItem[:name] + " & "
      elsif arrItem == names.last
        output += arrItem[:name]
      else
        output += arrItem[:name] + ", "
      end
    end
  end
  output
end
