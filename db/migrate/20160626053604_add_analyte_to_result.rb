class AddAnalyteToResult < ActiveRecord::Migration
  def change
    add_reference :results, :analyte, index: true, foreign_key: true
  end
end
