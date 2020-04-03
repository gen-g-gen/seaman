class CreateUserPoints < ActiveRecord::Migration[5.2]
  def change
    create_table :user_points do |t|
      t.references :point, foreign_key: true
      t.references :user, foreign_key: true
      t.timestamps
    end
  end
end
