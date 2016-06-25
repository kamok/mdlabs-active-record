class Physician < ActiveRecord::Base
	has_many :specimen
  belongs_to :hospital

  validates :physician_phone_number, format: { with: /\d{3}-\d{3}-\d{4}/, message: "bad format" }
end
