class StringRepeater
  def initialize(terminal)
    @terminal = terminal
  end

  def run 
    @terminal.puts "Hello. I will repeat a string many times."
    @terminal.puts "Please enter a string"
    user_string = @terminal.gets
    @terminal.puts "Please enter a number of repeats"
    user_repeat = @terminal.gets.to_i
    @terminal.puts "Here is your result:"
    #user_repeat.times{@terminal.puts user_string}
    @terminal.puts user_string * user_repeat
  end
end




# Hello. I will repeat a string many times.
# Please enter a string
# TWIX
# Please enter a number of repeats
# 10
# Here is your result:
# TWIXTWIXTWIXTWIXTWIXTWIXTWIXTWIXTWIXTWIX