class CreatePoints < ActiveRecord::Migration[5.2]
  def change
    create_table :points do |t|
      t.string :name, null: false
      # t.references :user, null: false, default: "", foreign_key: true
      t.string :ancestry 
      t.timestamps
    end
    add_index :points, :ancestry
  end
end
