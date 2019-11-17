class AddPurposeAndType < ActiveRecord::Migration[5.2]
  def change
    add_column :scholarships, :types, :integer
    add_column :scholarships, :purposes, :integer
  end
end
