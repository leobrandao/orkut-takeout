require 'rails_helper'

describe Authorizable do
	it "should store the authentication token prepended by baerer" do
		#setup
		passed_token = "/this is my token/"
		expected_token = "this is my token"
		#exercise
		Authorizable.set_token passed_token
		#verify
		expect(Authorizable.get_token).to start_with "bearer " + expected_token
	end
end
