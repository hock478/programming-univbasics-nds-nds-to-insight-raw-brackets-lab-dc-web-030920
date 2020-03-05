$LOAD_PATH.unshift(File.dirname(__FILE__))
require 'directors_database'

def directors_totals(nds)
 
 new_hash = {}
  row_index = 0 

  while row_index < nds.count do 
  
   directors_name = nds[row_index][:name]
   new_hash[directors_name] = 0
   column_index = 0 
     while column_index < nds[row_index][:movies].count do 
      
      new_hash[directors_name] += nds[row_index][:movies][:worldwide_gross]
      column_index += 1 
    end
    row_index += 1 

 end 
  
  
return new_hash
  
end