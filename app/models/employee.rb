class Employee < ApplicationRecord
  # validates :name, presence: true
  require 'csv'

    def self.to_csv
      employees = all
        CSV.generate do | csv|
          csv << column_names
            employees.each do | employee |
              csv << employee.attributes.values_at(*column_names)
            end 
        end
    end
end
