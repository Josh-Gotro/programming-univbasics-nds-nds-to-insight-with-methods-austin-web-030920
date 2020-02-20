require 'pp'
$LOAD_PATH.unshift(File.dirname(__FILE__))
require 'directors_database'

def gross_for_director(director_data)
      total_gross = 0
      row_index = 0
        while director_data[:movies][row_index] do
        total_gross += director_data[:movies][row_index][:worldwide_gross]
        row_index += 1
  end
  total_gross
end

##

def directors_totals(nds)
  result = {}
  nil
n = 0 
while nds[n] do 
  director = nds[n][:name]
  result[director] = gross_for_director(nds[n])
  n += 1
   
  end
  result
end
