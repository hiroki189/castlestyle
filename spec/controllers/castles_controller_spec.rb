require 'rails_helper'

describe CastlesController do
  describe 'GET #new' do
    it "render the :new template" do
      get :index
      expect(response).to render_template :index
    end
  end

end