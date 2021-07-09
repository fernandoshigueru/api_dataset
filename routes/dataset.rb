require "csv"
require "pry"

class DataSet
  
  def remove_row
    new_csv  = []
    csv = []
    CSV.read("../dataset/document.csv").each_with_index do |row, index|
      if index > 0
        new_csv << row
      end
    end

    CSV.open("../dataset/document.csv", "wb") do |csv|
      new_csv.each do |row|
        csv << row
      end
    end

    $uploaded_file = new_csv
    puts $uploaded_file
  end

end
  
$dataset = DataSet.new
