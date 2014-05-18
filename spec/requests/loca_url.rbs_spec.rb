require 'spec_helper'

describe "LocaUrl.rbs" do
  describe "GET /loca_url.rbs" do
    it "works! (now write some real specs)" do
      # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
      get loca_url.rbs_path
      response.status.should be(200)
    end
  end
end
