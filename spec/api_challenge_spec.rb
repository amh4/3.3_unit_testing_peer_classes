require_relative "../lib/api_challenge"

RSpec.describe CatFacts do
  it "provides cat facts" do
    # creates fake requester
    fake_requester = double :requester
    # allows fake requester to receive methods/api
    # this sets what the api will return
    allow(fake_requester).to receive(:get).with(URI("https://catfact.ninja/fact")).and_return(
      '{"fact":"Phoenician cargo ships are thought to have brought the first domesticated cats to Europe in about 900 BC.","length":105}'
    )
    # create new instance and pass in requester
    cat_fact = CatFacts.new(fake_requester)
    expect(cat_fact.provide).to eq "Cat fact: Phoenician cargo ships are thought to have brought the first domesticated cats to Europe in about 900 BC."
  end
end