require "rails_helper"

RSpec.describe SmallPetsController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/small_pets").to route_to("small_pets#index")
    end


    it "routes to #show" do
      expect(:get => "/small_pets/1").to route_to("small_pets#show", :id => "1")
    end


    it "routes to #create" do
      expect(:post => "/small_pets").to route_to("small_pets#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/small_pets/1").to route_to("small_pets#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/small_pets/1").to route_to("small_pets#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/small_pets/1").to route_to("small_pets#destroy", :id => "1")
    end

  end
end
