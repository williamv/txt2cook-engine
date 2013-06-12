class Phonenumber < ActiveRecord::Base
  attr_accessible :phone_number
  validates :phone_number, presence: true, :numericality => true, :uniqueness => true
end
