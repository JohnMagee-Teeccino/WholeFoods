# spec/features/create_region_spec.rb

require 'rails_helper'

RSpec.describe 'Creating a Region', type: :feature do

	scenario "Creating A New Region" do

		visit new_region_path
		fill_in "region_name", with: "New Region"
		click_button 'Add Region'

		expect(page).to have_content "Region Created"
		expect(page).to have_content "New Region"
	end
end
