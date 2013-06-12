require 'test_helper'

class PhonenumberTest < ActiveSupport::TestCase
	test "should save a new phone number"  do
		p = phonenumbers(:mine)
		assert p.save, "blocked from saving a number"
	end

	test "shouldn't save without a number" do
		p = phonenumbers(:no_number)
		assert !p.save, "Shouldn't be able to save without a phone number"
	end

	test "should be numbers only" do
		p = phonenumbers(:not_a_number)
		assert !p.save, "Shouldn't save non-numerical phone numbers"
	end

	test "should be a unique number" do
		original = phonenumbers(:mine)
		original.save
		dupe = phonenumbers(:mine)
## TODO FIGURE OUT HOW TO TEST FOR UNIQUENESS ##

	end
end
