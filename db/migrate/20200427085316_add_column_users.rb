class AddColumnUsers < ActiveRecord::Migration[5.2]
  def change
    add_reference :users, :homepoint, foreign_key: true
  end
end
