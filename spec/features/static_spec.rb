require 'rails_helper'

describe "navigate" do
  describe "homepage" do
   it "page visit with success" do
   visit root_path
   expect(page.status_code).to eq(200)
   end
  end
end