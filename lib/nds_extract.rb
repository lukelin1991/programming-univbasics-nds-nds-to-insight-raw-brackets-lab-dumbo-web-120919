$LOAD_PATH.unshift(File.dirname(__FILE__))
require 'directors_database'
require 'pry'

def directors_totals(nds)
  result = {
  }

  row_index = 0

  while row_index < directors_database.length do
    column_index = 0
    total_gross = 0
    while column_index < directors_database[row_index][:movies].length do


      total_gross += directors_database[row_index][:movies][column_index][:worldwide_gross]
      column_index += 1
    end

    result[directors_database[row_index][:name]] = total_gross
    row_index += 1
  end
  return result
end
