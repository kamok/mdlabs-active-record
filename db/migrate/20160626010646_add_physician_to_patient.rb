class AddPhysicianToPatient < ActiveRecord::Migration
  def change
    add_reference :patients, :physician, index: true, foreign_key: true
  end
end
