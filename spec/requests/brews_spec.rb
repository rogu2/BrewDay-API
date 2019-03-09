require 'rails_helper'

RSpec.describe "Brews", type: :request do
  describe "GET /brews" do
    it "works! (now write some real specs)" do
      get brews_path
      expect(response).to have_http_status(200)
    end
  end
end
