class CreateFormulas < ActiveRecord::Migration[5.2]
  def change
    create_table :formulas do |t|
      t.string :title
      t.references :user
      t.boolean :is_public

      t.timestamps
    end
  end
end
