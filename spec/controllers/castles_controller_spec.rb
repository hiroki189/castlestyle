require 'rails_helper'

describe CastlesController do

  describe 'GET #index' do
    it "populates an array of casltes ordered by id ASC" do
      castles = create_list(:castle, 3)
      get :index
      expect(assigns(:castles)).to match(castles.sort{ |a,b| a.id <=> b.id})
    end

    it "renders the :index template" do
      get :index
      expect(response).to render_template :index
    end
  end


  describe 'GET #new' do
    it "render the :new template" do
      get :new
      expect(response).to render_template :new
    end
  end


end