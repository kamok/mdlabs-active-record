class Patient < ActiveRecord::Base
	belongs_to :physician
  has_many :specimens
end
