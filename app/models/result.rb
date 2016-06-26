class Result < ActiveRecord::Base
	belongs_to :specimen
  belongs_to :analyte

end