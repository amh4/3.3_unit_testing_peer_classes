require_relative "../lib/diary"
require_relative "../lib/secret_diary"

RSpec.describe "Integration Test" do
  it "takes diary entry and adds it to secret diary" do
    my_diary = Diary.new("Contents to be made a secret")
    my_secret_diary = SecretDiary.new(my_diary)
    expect(my_secret_diary.read).to eq "Contents to be made a secret"
  end
  
  it "diary returns Go Away! if it is locked" do
    my_diary = Diary.new("Contents to be made a secret")
    my_secret_diary = SecretDiary.new(my_diary)
    my_secret_diary.lock
    expect(my_secret_diary.read).to eq "Go away!"
  end
end