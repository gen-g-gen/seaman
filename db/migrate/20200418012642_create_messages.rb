class CreateMessages < ActiveRecord::Migration[5.2]
  def change
    create_table :messages do |t|
      t.string :message, null: false
      t.text :image
      t.integer :point_id, foreign_key: true
      t.integer :user_id, foreign_key: true
      t.decimal :wave,  precision: 3, scale: 2
      t.decimal :windy,  precision: 3, scale: 2
      t.decimal :population,  precision: 3, scale: 2
      t.decimal :set,  precision: 3, scale: 2
      t.decimal :expected,  precision: 3, scale: 2
      
    end
  end
end
