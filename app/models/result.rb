class Result < ActiveRecord::Base
	belongs_to :speciman
  belongs_to :analyte

  def self.q1_2014
  	where(reported_at: Time.new(2014,06).beginning_of_quarter..Time.new(2014,06).end_of_quarter)
  end

  # - Write an ActiveRecord query to get all results reported in the 775 area 
	# code. Place the code in a method titled 'reno_results' in the Result class.
  def self.reno_results(area_code)
  	patient_id_living_in_area_code = Patient.living_in_area_code(area_code)
  	specimen_id = Speciman.where(patient_id: patient_id_living_in_area_code).map(&:id)   #speciman id provided by those patients 
  	Result.where(speciman_id: specimen_id)
  end
end