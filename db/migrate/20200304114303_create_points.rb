class CreatePoints < ActiveRecord::Migration[5.2]
  def change
    create_table :points do |t|
      t.string :name, null: false
      # t.references :user, null: false, default: "", foreign_key: true
      # t.integer :area_id, foreign_key: true
      t.timestamps
    end
  end
end
