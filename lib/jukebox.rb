

# Add your code here
def say_hello(name)
  "Hi #{name}!"
end

#outputs user instructions
def help
  puts "I accept the following commands:
- help : displays this help message
- list : displays a list of songs you can play
- play : lets you choose a song to play
- exit : exits this program"
end
#lists available songs
def list(songs)
  songs.each_with_index do |song, i|
    puts "#{i+1}. #{song}"
  end
end
#asks for song name or track number and returns song name
def play(songs)
  puts "Please enter a song name or number:"
  input = gets.chomp
  if songs.include?(input)
    puts input
  elsif input.to_i && input.to_i.between?(1, songs.count)
     puts "Playing #{songs[input.to_i - 1]}"
  else
    puts "Invalid input, please try again"
  end
end
#says goodbye and ends program
def exit_jukebox
  puts "Goodbye!"
end
  

def run(songs)
  #puts "Enter your name:"
  #users_name = gets.chomp
  #puts say_hello(users_name)
  help
  puts "Please enter a command:"
  input = gets.chomp
  #until input == "exit"
    if input == "help"
      help
    elsif input == "list"
      list(songs)
    elsif input == "play"
      play(songs)
    end
    #puts "Please enter a command:"
    #input = gets.chomp
  #end
    
  if input == "exit"
    exit_jukebox
  end  
  exit_jukebox
end