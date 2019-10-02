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
  if songs.find(user_input) == user_input
    puts "Playing #{user_input}"
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

def run()
  puts "Please enter a command:"
  user_input = gets.strip
  
  while user_input != "exit" do
    if user_input == "play"
      play(songs)
      break
    elsif user_input == "help"
      help()
      break
    elsif user_input == "list"
      list(songs)
      break
    else
      puts "invalid input"
    end
  end
  exit_jukebox()
end
