class AddRightToCatmaths < ActiveRecord::Migration[5.0]
  def change
    add_column :catmaths, :right, :integer
  end
end
