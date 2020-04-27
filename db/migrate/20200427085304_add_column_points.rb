class AddColumnPoints < ActiveRecord::Migration[5.2]
  def change
    add_reference :points, :area, foreign_key: true
  end
end
