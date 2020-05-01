class CreateMessages < ActiveRecord::Migration[5.2]
  def change
    create_table :messages do |t|
      t.string :message, null: false
      t.text :image
      t.references :point, foreign_key: true
      t.references :user, foreign_key: true
      t.decimal :wave,  precision: 3, scale: 2
      t.decimal :windy,  precision: 3, scale: 2
      t.decimal :population,  precision: 3, scale: 2
      t.decimal :set,  precision: 3, scale: 2
      t.decimal :expected,  precision: 3, scale: 2
      t.timestamps
    end
  end
end
