class AddDetailsToEmployee < ActiveRecord::Migration[7.0]
  def change
    add_column :employees, :date_of_birth, :date
    add_column :employees, :company_name, :string
    add_column :employees, :company_address, :text
    add_column :employees, :joining_date, :date
    add_column :employees, :father_name, :string
    add_column :employees, :mother_name, :string
    add_column :employees, :father_contact_no, :integer
    add_column :employees, :mother_contact_no, :integer
    add_column :employees, :contact_no, :integer
    add_column :employees, :house_no, :string
    add_column :employees, :area_lankmark, :string
    add_column :employees, :city, :string
    add_column :employees, :state, :string
    add_column :employees, :pin_code, :integer
    add_column :employees, :gender, :string
  end
end
