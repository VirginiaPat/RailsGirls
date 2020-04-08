require "rails_helper"

RSpec.describe Idea, type: :model do
	describe "associations" do
    it{ is_expected.to have_many(:comments) }
  end
  describe "validations" do
    it{ is_expected.to validate_presence_of :name }
  end
  it "has a name" do # yep, you can totally use 'it'
    idea = Idea.create!(name: "My Awesome Idea Name") # creating a new idea 'instance'
    expect(idea.name).to eq("My Awesome Idea Name") # this is our expectation
    second_idea = Idea.create!(name: "My Second Idea Name") # creating another new idea 'instance'
    expect(second_idea.name).to eq("My Second Idea Name") # this is our expectation
  end
	it "has a description" do
		idea = Idea.create!(description:"I have a description", name:"Mitsos")
		expect(idea.description).to eq("I have a description")
	end
end
