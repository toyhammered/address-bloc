#----- Testing Command ---
# rspec spec/entry_spec.rb

require_relative 'spec_helper'
require_relative '../models/entry'


RSpec.describe Entry do

	describe "attributes" do
		it "should respond to name" do
			entry = Entry.new
			expect(entry).to respond_to(:name)
		end

		it "should respond to phone number" do
			entry = Entry.new
			expect(entry).to respond_to(:phone_number)
		end

		it "should respond to email" do
			entry = Entry.new
			expect(entry).to respond_to(:email)
		end
	end

end

