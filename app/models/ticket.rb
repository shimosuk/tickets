class Ticket < ActiveRecord::Base
  attr_accessible :address, :email_address, :name, :price_paid, :seat_id_seq
end
