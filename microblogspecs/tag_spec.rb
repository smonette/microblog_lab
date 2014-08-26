require 'rails_helper'

RSpec.describe Tag, :type => :model do

  it "should test that tag is saved" do
  	Tag.create(:name => "BobTag")
  	bobstag = Tag.find_by_name("BobTag")
		expect(bobstag).not_to eq(nil)
  end

end
