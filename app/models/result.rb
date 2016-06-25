class Result < ActiveRecord::Base
	belongs_to :specimens
  belongs_to :analyte
end
