class AddColumnAreas < ActiveRecord::Migration[5.2]
  def change
    add_reference :areas, :prefecture, foreign_key: true
  end
end
