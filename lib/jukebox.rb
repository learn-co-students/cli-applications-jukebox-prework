songs = [
  "Phoenix - 1901",
  "Tokyo Police Club - Wait Up",
  "Sufjan Stevens - Too Much",
  "The Naked and the Famous - Young Blood",
  "(Far From) Home - Tiga",
  "The Cults - Abducted",
  "Phoenix - Consolation Prizes",
  "Harry Chapin - Cats in the Cradle",
  "Amos Lee - Keep It Loose, Keep It Tight"
]

def help()
  puts "I accept the following commands:\n- help : displays this help message\n- list : displays a list of songs you can play\n- play : lets you choose a song to play\nexit : exits this program"
end

def play(songs)
  puts "Please enter a song name or number:"
  user_input = gets.strip    
  found = false
  if user_input.to_i
    if songs[user_input.to_i-1]
      play_song = songs[user_input.to_i-1]
      found = true
    end
  else
    if songs.include?(user_input)
      play_song = user_input
      found = true
    end
  end
  if found
    puts "Playing #{play_song}"
  else
    puts "invalid input, please try again"
  end
end

def list(songs)
  array = []
  songs.each_with_index do |song, index|
    array.push("#{index+1}. #{song}")
  end
end

def exit_jukebox()
  puts "Goodbye"
end

def run(songs)
  loop do
    puts "Please enter a command:"
    user_input = gets.strip
    if user_input == "play"
      play(songs)
    elsif user_input == "help"
      help()
    elsif user_input == "list"
      list(songs)
    elsif user_input == "exit"
      exit_jukebox()
    else
      puts "invalid input"
    end
    
    break if user_input == "exit"
  end
end
