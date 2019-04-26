class CreateElementTags < ActiveRecord::Migration[5.2]
  def change
    create_table :element_tags do |t|
      t.references :element
      t.references :tag

      t.timestamps
    end
  end
end
