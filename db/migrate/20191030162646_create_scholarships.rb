class CreateScholarships < ActiveRecord::Migration[5.2]
  def change
    create_table :scholarships do |t|

      t.timestamps
    end
  end
end
