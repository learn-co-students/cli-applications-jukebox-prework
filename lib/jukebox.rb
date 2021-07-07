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

=begin
def say_hello(name)
  "Hi #{name}!"
end
 
puts "Enter your name:"
users_name = gets.chomp
 
puts say_hello(users_name)
=end

def help 
  puts "I accept the following commands:"
  puts "- help : displays this help message"
  puts "- list : displays a list of songs you can play"
  puts "- play : lets you choose a song to play"
  puts "- exit : exits this program"
end

def list(songs)
  songs.each_with_index do |song_title, index|
    puts "#{index+1}. #{song_title}"
  end
end

def play(songs)
  puts "Please enter a song name or number:"
  input = gets.chomp
  
  if songs.include? input
    puts "Playing #{input}"
  elsif input.to_i.between?(1, songs.length)
    puts "Playing #{songs[input.to_i-1]}"
  else
    puts "Invalid input, please try again"
  end
end

def exit_jukebox
  puts "Goodbye"
end

def run(songs)
help
puts"Please enter a command:"
command = gets.chomp

  while command != "exit" do
    if command == "help"
      help
      puts "Please enter a command:"
      command = gets.chomp
    elsif command == "list"
      list(songs)
      puts "Please enter a command:"
      command = gets.chomp
    elsif command == "play"
      play(songs)
      puts "Please enter a command:"
      command = gets.chomp
    else
      puts "Invalid input, please try again"
      puts "Please enter a command:"
      command = gets.chomp
    end
  end
  
  exit_jukebox
end 
