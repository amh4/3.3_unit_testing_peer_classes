require_relative "../lib/secret_diary"

RSpec.describe "secret_diary.rb" do
  context "Unit mock test" do
    it "takes a diary arg and returns locked diary message" do
      fake_diary_entry = double("Contents to be made secret")
      my_secret_diary = SecretDiary.new(fake_diary_entry)
      expect(my_secret_diary.read).to eq "Go away!"
    end
    
    it "takes a diary arg and returns diary contents" do
      fake_diary_entry = double("Contents to be made secret")
      my_secret_diary = SecretDiary.new(fake_diary_entry)
      my_secret_diary.unlock
      expect(my_secret_diary).to receive(:read).and_return("Contents to be made secret")
      expect(my_secret_diary.read).to eq "Contents to be made secret"
    end
    
    it "unlocks and re-locks diary" do
      fake_diary_entry = double("Contents to be made secret")
      my_secret_diary = SecretDiary.new(fake_diary_entry)
      my_secret_diary.unlock
      my_secret_diary.lock
      expect(my_secret_diary).to receive(:read).and_return("Go away!")
      expect(my_secret_diary.read).to eq "Go away!"
    end
  end
end
