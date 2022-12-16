# File: lib/secret_diary.rb

class SecretDiary
  def initialize(diary) # diary is an instance of Diary
    @my_secret_diary = diary
    @locked = false
  end

  def read
    # Raises the error "Go away!" if the diary is locked
    # Returns the diary's contents if the diary is unlocked
    # The diary starts off locked
    if @locked == false
      @my_secret_diary.instance_variable_get(:@contents)
    else
      "Go away!"
    end
  end

  def lock
    # Locks the diary
    # Returns nothing
    @locked = true
  end

  def unlock
    # Unlocks the diary
    # Returns nothing
  end
end