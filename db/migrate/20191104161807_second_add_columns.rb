class SecondAddColumns < ActiveRecord::Migration[5.2]
  def change
    add_column :scholarships, :name, :string
    add_column :scholarships, :url, :string
    add_column :scholarships, :start_date, :date
    add_column :scholarships, :close_date, :date
    add_column :scholarships, :status, :integer
  end
end
