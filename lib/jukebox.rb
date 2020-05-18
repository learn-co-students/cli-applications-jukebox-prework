require 'pry'

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

#def say_hello(name)
  #"Hi #{name}!"
#end

#puts "Enter your name:"
#users_name = gets.strip
 
#puts say_hello(users_name)

def help
  puts "I accept the following commands:"
  puts "- help : displays this help message"
  puts "- list : displays a list of songs you can play"
  puts "- play : lets you choose a song to play"
  puts "- exit : exits this program"
end 

def list(songs)
  songs.each_with_index do |item, index|
    if index == 0
      puts "1. #{item}\n"
    else
      puts "#{index + 1}. #{item}\n"
    end
  end
end 

def play(songs)
  puts "Please enter a song name or number:"
  user_response = gets.strip
  
  if songs.include?(user_response)
    songs.each do |song_name|
      if user_response == song_name
        puts "Playing #{song_name}"
      end
    end
  elsif user_response.to_i >= 1 && user_response.to_i <= songs.length
      puts "Playing #{songs[user_response.to_i - 1]}"
  else 
      puts "Invalid input, please try again"
  end
end

def exit_jukebox
  puts "Goodbye"
end

def run(songs)
 puts "Please enter a command:"
 user_command = gets.strip
 
 case user_command
  when "help"
    help
  when "list"
    list(songs)
  when "play"
    play(songs)
  when "exit"
    return exit_jukebox
 end 
end