class CreateHomepoints < ActiveRecord::Migration[5.2]
  def change
    create_table :homepoints do |t|
      t.string :name, null: false
      t.references :area, foreign_key: true
      t.timestamps
    end
  end
end
