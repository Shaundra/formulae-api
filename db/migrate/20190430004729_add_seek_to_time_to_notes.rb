class AddSeekToTimeToNotes < ActiveRecord::Migration[5.2]
  def change
    add_column :notes, :seek_to_time, :string
  end
end
