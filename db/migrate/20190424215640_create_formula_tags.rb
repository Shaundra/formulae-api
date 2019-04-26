class CreateFormulaTags < ActiveRecord::Migration[5.2]
  def change
    create_table :formula_tags do |t|
      t.references :formula
      t.references :tag
      t.timestamps
    end
  end
end
