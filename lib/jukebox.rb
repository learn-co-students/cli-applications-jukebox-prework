def help 
  puts "I accept the following commands:"
  puts "- help : displays this help message"
  puts "- list : displays a list of songs you can play"
  puts "- play : lets you choose a song to play"
  puts "- exit : exits this program"
end

def list(songs)
  songs.map.with_index { |item, index|
    puts "#{index + 1}. #{item}"
  }
end

def play(songs)
  puts "Please enter a song name or number:"
  input = gets.chomp
  puts input.class
  songs.each_with_index { |song, index|
    puts song.class
    if input == (index + 1).to_s || song.upcase.include?(input.upcase)
      puts "#{song} is now playing"
    else
      puts "Invalid input, please try again"
    end
  }
end

def exit_jukebox
  puts "Goodbye"
end

def run(songs)
  help
  puts "Please enter a command:"
  input = gets.chomp
  while input.upcase != "EXIT"
    case input.upcase
      when "HELP"
        help
      when "LIST"
        list(songs)
      when "PLAY"
        play(songs)
      else
        puts "Invalid Command"
        help
      end
    end
  exit
end







