require 'directors_database'

# Write a method that, given an NDS creates a new Hash
# The return value should be like:
#
# { directorOne => allTheMoneyTheyMade, ... }

def directors_totals(nds)
  result = {}
  x = 0 
  while x < nds.length do 
    y = 0 
    while y < nds[x].length do 
      total = 0
      z = 0 
      while z < nds[x][:movies].length do 
        total += nds[x][:movies][z][:worldwide_gross]
        z += 1 
      end 
      name = nds[x][:name]
      result[name] = total
       
      
      y +=1
    end
     x += 1 
  end 
  return result
  
  nil
end
# Find a way to accumulate the :worldwide_grosses and return that Integer
# using director_data as input
def gross_for_director(director_data)
  total = 0 
  x = 0 
  while x < director_data[:movies].length do
    total += director_data[:movies][x][:worldwide_gross]
    x+=1 
  end
  return total
    
  
end
