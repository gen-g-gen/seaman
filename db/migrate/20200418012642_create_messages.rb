class CreateMessages < ActiveRecord::Migration[5.2]
  def change
    create_table :messages do |t|
      t.string :message, null: false
      t.text :image
      t.integer :point_id, foreign_key: true
      t.integer :user_id, foreign_key: true
      t.string :wave
      t.string :windy
      t.string :population
      t.string :set
      t.timestamps
    end
  end
end
