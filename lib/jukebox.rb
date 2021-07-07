# Add your code here
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

def help 
  puts "I accept the following commands:"
  puts "- help : displays this help message"
  puts "- list : displays a list of songs you can play"
  puts "- play : lets you choose a song to play"
  puts "- exit : exits this program"
end

def list(songs)
  songs.each_with_index { |song, index| puts "#{index + 1}. #{song}" }
end

=begin
def play(songs)
  puts "Please enter a song name or number:"
  user_response = gets.chomp
  songs.each_with_index do |song, index|
    if user_response == song || user_response.to_i == index + 1 
      puts "Playing #{song}"
    else 
      puts "Invalid input, please try again"
    end
  end
end
=end

def play(songs)
  puts "Please enter a song name or number:"
  user_response = gets.strip
  if user_response.to_i >= 1 && user_response.to_i <= songs.length
    puts "Playing #{songs[user_response.to_i-1]}"
  elsif songs.include?(user_response)
    puts "Playing #{songs[songs.index(user_response)]}"
  else 
    puts "Invalid input, please try again"
  end
end



def exit_jukebox
  puts "Goodbye"
end

def run(songs)
  help
  
  loop do
    puts "Please enter a command:"
    command = gets.chomp
    case command
    when "list"
      list(songs)
    when "play"
      play(songs)
    when "help"
      help
    when "exit"
      exit_jukebox
      break
    else
      puts "That's not a valid command"
    end
  end
end