class AddSpecimanToResult < ActiveRecord::Migration
  def change
    add_reference :results, :speciman, index: true, foreign_key: true
  end
end
