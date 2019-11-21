class AddCapacity < ActiveRecord::Migration[5.2]
  def change
    add_column :scholarships, :capacity, :integer
  end
end
