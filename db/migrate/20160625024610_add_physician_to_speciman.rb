class AddPhysicianToSpeciman < ActiveRecord::Migration
  def change
    add_reference :specimen, :physician, index: true, foreign_key: true
  end
end
