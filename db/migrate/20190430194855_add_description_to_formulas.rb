class AddDescriptionToFormulas < ActiveRecord::Migration[5.2]
  def change
    add_column :formulas, :description, :text
  end
end
