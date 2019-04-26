class CreateElements < ActiveRecord::Migration[5.2]
  def change
    create_table :elements do |t|
      t.references :formula
      t.string :title
      t.integer :position
      t.boolean :is_public
      t.timestamps
    end
  end
end
