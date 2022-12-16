require_relative "../lib/diary"

RSpec.describe "diary.rb" do
  context "Unit Mock Testing diary.rb" do
    it "returns the contents of the diary entry" do
      diary = Diary.new("My diary entry")
      expect(diary.read).to eq "My diary entry"
    end
  end
end