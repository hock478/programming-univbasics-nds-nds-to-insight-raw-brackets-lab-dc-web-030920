$LOAD_PATH.unshift(File.dirname(__FILE__))
require 'directors_database'

def directors_totals(nds)
 
 new_hash = {}
  row_index = 0 

  while row_index < nds.count do 
  
   directors_name = nds[row_index][:name]
   sub_total = 0 
   column_index = 0 
     while column_index < nds[row_index][:movies].length do 
      
      sub_total += nds[row_index][:movies][column_index][:worldwide_gross]
      column_index += 1 
    end
    new_hash[directors_name] = sub_total
    row_index += 1 

 end 
  
  
return new_hash
  
end