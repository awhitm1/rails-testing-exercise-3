require 'rails_helper'

RSpec.describe "Posts", type: :request do
  describe "GET /index" do
    it "returns http success" do
      get "/posts/index"
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET /add" do
    it "returns http success" do
      get "/posts/add"
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET /delete" do
    it "returns http success" do
      get "/posts/delete"
      expect(response).to have_http_status(:success)
    end
  end

end
