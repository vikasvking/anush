class CreateScaffolds < ActiveRecord::Migration[5.0]
  def change
    create_table :scaffolds do |t|
      t.string :Math
      t.string :topic
      t.integer :questions

      t.timestamps
    end
  end
end
