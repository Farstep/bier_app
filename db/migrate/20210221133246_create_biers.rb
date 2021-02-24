class CreateBiers < ActiveRecord::Migration[6.1]
  def change
    create_table :biers do |t|
      t.string :deutsch_name, null: false
      t.string :name, null: false
      t.float :percentage, null: false
      t.string :area, null: false
      t.string :style, null: false
      t.text :explanation, null: false

      t.timestamps
    end
  end
end
