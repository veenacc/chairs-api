class CreateChairs < ActiveRecord::Migration[7.1]
  def change
    create_table :chairs do |t|
      t.string :type
      t.string :color
      t.integer :price

      t.timestamps
    end
  end
end
