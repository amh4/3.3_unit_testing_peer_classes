require_relative "../lib/api_testing"

RSpec.describe "api testing" do
  context "mock testing api" do
    it "returns the server time" do
      fake_requester = double :requester
      allow(fake_requester).to receive(:get).with(URI("https://worldtimeapi.org/api/ip")).and_return(
        '{"abbreviation":"GMT","client_ip":"146.198.189.23","datetime":"2022-12-20T11:56:53.016456+00:00","day_of_week":2,
          "day_of_year":354,"dst":false,"dst_from":null,"dst_offset":0,"dst_until":null,"raw_offset":0,
          "timezone":"Europe/London","unixtime":1671537413,"utc_datetime":"2022-12-20T11:56:53.016456+00:00",
          "utc_offset":"+00:00","week_number":51}')
      time = Time.new(2022, 12, 20, 11, 56, 53)
      time_error = TimeError.new(fake_requester)
      expect(time_error.error(time)).to eq 0.016456
    end
  end
end