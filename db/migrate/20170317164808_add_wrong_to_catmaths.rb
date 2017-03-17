class AddWrongToCatmaths < ActiveRecord::Migration[5.0]
  def change
    add_column :catmaths, :wrong, :integer
  end
end
