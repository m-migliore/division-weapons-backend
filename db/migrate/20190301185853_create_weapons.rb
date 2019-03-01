class CreateWeapons < ActiveRecord::Migration[5.2]
  def change
    create_table :weapons do |t|
      t.string :name
      t.integer :damage
      t.integer :rpm
      t.integer :mag
      t.integer :level
      t.boolean :favorite

      t.timestamps
    end
  end
end
