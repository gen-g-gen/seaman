class CreateAreas < ActiveRecord::Migration[5.2]
  def change
    create_table :areas do |t|
      t.string :name, null: false
      # t.integer :prefecture_id, foreign_key: true
      t.timestamps
    end
  end
end
