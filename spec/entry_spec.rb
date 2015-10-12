# rspec spec/entry_spec.rb

require_relative 'spec_helper'
require_relative '../models/entry'


RSpec.describe Entry do

	describe "attributes" do
		it "should respond to name" do
			entry = Entry.new('Ada Lovelace', '010.012.1815', 'augusta.King@lovelace.com')
			expect(entry).to respond_to(:name)
		end

		it "should respond to phone number" do
			entry = Entry.new('Ada Lovelace', '010.012.1815', 'augusta.King@lovelace.com')
			expect(entry).to respond_to(:phone_number)
		end

		it "should respond to email" do
			entry = Entry.new('Ada Lovelace', '010.012.1815', 'augusta.King@lovelace.com')
			expect(entry).to respond_to(:email)
		end
	end


	# the '#' in front of to_s indicates that it is an instance method
	describe "#to_s" do
		it "prints an entry as a string" do
			entry = Entry.new('Ada Lovelace', '010.012.1815', 'augusta.King@lovelace.com')
			expected_string = "Name: Ada Lovelace\nPhone Number: 010.012.1815\nEmail: augusta.King@lovelace.com"
			expect(entry.to_s).to eq(expected_string)
		end
	end

end

