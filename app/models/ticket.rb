class Ticket < ActiveRecord::Base
  attr_accessible :address, :email_address, :name, :price_paid, :seat_id_seq , :phone_number
  validates :name, presence: true
  validates :phone_number, length: { minimum: 10, maximum: 11 }
end
