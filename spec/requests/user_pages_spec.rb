require 'rails_helper'

RSpec.describe "UserPages", :type => :request do
  describe "User pages" do
  	subject { page }

  	describe "signup page" do
  		before { visit signup_path }
  		it { should have_content('Sign Up') }
  		it { should have_title(full_title('Sign Up')) }
  	end
  end
end
