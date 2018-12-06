class Menu < ApplicationRecord
  has_one :breakfast
  has_one :lunch
  has_one :dinner

  validates :date, presence: true, uniqueness: 
  
  def open_spreadsheet
    case File.extname(file.original_filename)
    when ".csv" then Csv.new(file.path, nil, :ignore)
    when ".xls" then Roo::Excel.new(file.path, nil, :ignore)
    when ".xlsx" then Roo::Excelx.new(file.path)
    else raise "Unknown file type: #{file.original_filename}"
    end
  end

  def load_imported_menus
    spreadsheet = open_spreadsheet
    raise spreadsheet.inspect
  end

end
