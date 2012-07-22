 #coding: utf-8
 require 'spec_helper'
 
 describe Ticket do
 
   describe 'validation' do
     before do
       @ticket = Ticket.new(name: 'akiinyo', seat_id_seq: 'A-7', address: 'Tokyo', price_paid: '3000', email_address: 'akiinyo@example.com', phone_number: '0123456789')
     end

     subject { @ticket }

     context '名前が未入力の場合' do
       before { @ticket.name = '' }
       it { should_not be_valid }
     end

     context '名前を入力した場合' do
       before { @ticket.name = 'akiinyo' }
       it { should be_valid }
     end

     context '電話番号が未入力の場合' do
       before { @ticket.phone_number = '' }
       it { should_not be_valid }
     end

     context '電話番号が短すぎる場合' do
       before { @ticket.phone_number = '012345678' }
       it { should_not be_valid }
     end

     context '電話番号が長すぎる場合' do
       before { @ticket.phone_number = '012345678901' }
       it { should_not be_valid }
     end

     context '電話番号が適切な場合' do
       before { @ticket.phone_number = '0123456789' }
       it { should be_valid }
     end
   end
 end
