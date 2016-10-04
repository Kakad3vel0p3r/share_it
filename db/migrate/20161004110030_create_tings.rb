class CreateTings < ActiveRecord::Migration[5.0]
  def change
    create_table :tings do |t|
      t.string :title
      t.text :brief

      t.timestamps
    end
  end
end
