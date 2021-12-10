class CreateCapstones < ActiveRecord::Migration[6.1]
  def change
    create_table :capstones do |t|
      t.integer :student_id
      t.string :name
      t.string :description
      t.string :URL
      t.string :screenshot

      t.timestamps
    end
  end
end
