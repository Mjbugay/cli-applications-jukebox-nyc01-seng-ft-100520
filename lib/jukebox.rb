def help
  puts "I accept the following commands:"
  puts "- help : displays this help message"
  puts "- list : displays a list of songs you can play"
  puts "- play : lets you choose a song to play"
  puts "- exit : exits this program"
end


def list(songs)
  songs.each_with_index do |song, index|
    puts "#{index+1}. #{song}"
  end
end

def play(songs)
  puts "Please enter a song name or number:"
  input = gets.strip
  number = input.to_i - 1
  
    if input == "exit"
      exit_jukebox
      elsif number < 0 && songs.include?(input)
      index = songs.index(input)
      puts "Playing #{songs[index]}"
      elsif number >= 0 && songs[number] != nil
      puts "Playing #{songs[number]}"
    else
      puts "Invalid input, please try again"
  end
end

def exit_jukebox
  puts "Goodbye"
end

def run
  puts "Please enter a command:"
  input = gets.strip
  
  case input

end












