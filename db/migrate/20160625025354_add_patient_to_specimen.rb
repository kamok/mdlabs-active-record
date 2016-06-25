class AddPatientToSpecimen < ActiveRecord::Migration
  def change
    add_reference :specimen, :patient, index: true, foreign_key: true
  end
end
