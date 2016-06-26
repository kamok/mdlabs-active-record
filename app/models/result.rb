class Result < ActiveRecord::Base
	belongs_to :specimen
  belongs_to :analyte

  def self.q1_2014
  	where(reported_at: Time.new(2014,06).beginning_of_quarter..Time.new(2014,06).end_of_quarter)
  end
end