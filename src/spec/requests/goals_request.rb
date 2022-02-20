require 'rails_helper'

RSpec.describe "Goals", type: :request do
  describe "[Action test]" do
    before do
      @user = FactoryBot.create(:user)
    end

    context "new" do
    #     it "access by user" do
    #      # sign_in @user
    #      @user
    #       get '/goals/new'
    #       expect(response).to be_successful
    #     end
    # end

    # it "access by guest" do
    #     get '/goals/new'
    #     expect(response).to have_http_status(302)
    #end

    it "show" do
      @goal = Goal.create(
        #id {1},
        #user_id{1},
        steps {300},
        term {30},
        penalties {1000},
        is_achieved = false,
        is_deleted = false
      )
      get goal_path(goal)
      expect(response).to be_successful
    end
  end
  end
end