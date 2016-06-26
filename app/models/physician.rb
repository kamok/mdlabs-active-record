class Physician < ActiveRecord::Base
	has_many :specimen
  belongs_to :hospital
  has_many :results, through: :specimen

  validates :physician_phone_number, format: { with: /\d{3}-\d{3}-\d{4}/, message: "bad format" }

	def self.results_analytes(physician_id)
		results_of_q1_2014 = Physician.where(id: physician_id).map(&:results).first.q1_2014
		
		Analyte.where(id: results_of_q1_2014).pluck(:analyte_name)
	end


end
