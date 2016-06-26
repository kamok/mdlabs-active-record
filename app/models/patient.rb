class Patient < ActiveRecord::Base
	belongs_to :physician
  has_many :specimen

  def self.living_in_area_code(area_code)
  	patient_id = []
  	Patient.all.map do |patient|
  		if patient.patient_address.split(" ").last == area_code.to_s
  			patient_id << patient.id
  		end
  	end
  	patient_id
  end
end
