class CreateCatmaths < ActiveRecord::Migration[5.0]
  def change
    create_table :catmaths do |t|
      t.string :topic
      t.integer :question

      t.timestamps
    end
  end
end
