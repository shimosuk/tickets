class AddPhoneNumberToTickets < ActiveRecord::Migration
  def change
    add_column :tickets, :phone_number, :String
  end
end
