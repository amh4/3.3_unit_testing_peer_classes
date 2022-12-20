require_relative "../lib/testing_terminal_io"

RSpec.describe StringRepeater do
  it "repeats a chosen string a chosen number of times" do
    terminal = double :terminal
    expect(terminal).to receive(:puts).with("Hello. I will repeat a string many times.").ordered
    expect(terminal).to receive(:puts).with("Please enter a string").ordered
    expect(terminal).to receive(:gets).and_return("Merry Christmas").ordered
    expect(terminal).to receive(:puts).with("Please enter a number of repeats").ordered
    expect(terminal).to receive(:gets).and_return("3").ordered
    expect(terminal).to receive(:puts).with("Here is your result:").ordered
    expect(terminal).to receive(:puts).with("Merry ChristmasMerry ChristmasMerry Christmas").ordered

    string_repeater = StringRepeater.new(terminal)
    string_repeater.run
  end
end