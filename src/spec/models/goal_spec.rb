require 'rails_helper'

RSpec.describe Goal, type: :model do
    it "factorybot test" do
        goal = FactoryBot.create(:goal, :a)
        expect(goal.steps).to eq 300
    end
end