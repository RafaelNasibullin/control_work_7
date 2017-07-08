class CreateProfiles < ActiveRecord::Migration[5.0]
  def change
    create_table :profiles do |t|
      t.string :name
      t.boolean :admin
      t.boolean :status
      t.string :image

      t.timestamps
    end
  end
end
