# Add your code here

def help
  puts "I accept the following commands:"
  puts "- help : displays this help message"
  puts "- list : displays a list of songs you can play"
  puts "- play : lets you choose a song to play"
  puts "- exit : exits this program"
end

def list(songs)
  songs.each_with_index do |song, index|
    puts "#{index + 1}. #{song}"
  end
end

def play(songs)
  puts "Please enter a song name or number:"
  input = gets.chomp
  
  chosen_song = nil 
  
  songs.each_with_index do |song, index|
    if input == song 
      chosen_song = song
    end
    if input == (index + 1).to_s
      chosen_song = song
    end
  end
  
  if chosen_song == nil
    puts "Invalid input, please try again"
  else 
    puts "Playing #{chosen_song}"
  end
end

def exit_jukebox
  puts "Goodbye"
end

def run(songs)
  puts "Please enter a command:"
  input = gets.chomp
  
  while input != "exit" 
    case input
      when "help"
        help
        puts "Please enter a command:"
        input = gets.chomp
      when "list"
        list(songs)
        puts "Please enter a command:"
        input = gets.chomp
      when "play"
        play(songs)
        puts "Please enter a command:"
        input = gets.chomp
      else 
        puts "Invalid input, please try again:"
        input = gets.chomp
    end
  end
  exit_jukebox
end




