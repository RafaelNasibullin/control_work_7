class CreateCovers < ActiveRecord::Migration[5.0]
  def change
    create_table :covers do |t|
      t.references :book, foreign_key: true

      t.timestamps
    end
  end
end
