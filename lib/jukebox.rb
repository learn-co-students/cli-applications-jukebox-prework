# Add your code here
require "pry"
def help
  puts "I accept the following commands:"
  puts "- help : displays this help message"
  puts "- list : displays a list of songs you can play"
  puts "- play : lets you choose a song to play"
  puts "- exit : exits this program"
end

def list(songs)
  songs.each_with_index do |song, i|
    puts "#{i+1}. #{song}"
  end
end

def play(songs)
  puts "Please enter a song name or number:"
  input = gets.strip
  if input.numeric?
    if input.to_i.between?(1,songs.length)
      puts "Playing #{songs[input.to_i-1]}"
    else
      invalid_input
    end
  else
    if songs.include?(input)
      puts "Playing #{input}"
    else
      invalid_input
    end
  end
end

def exit_jukebox
  puts "Goodbye"
end

def invalid_input
  puts "Invalid input, please try again"
end

def run(song)
  puts "Please enter a command:"
  input = gets.strip
  case input
  when "help"
    help
    run(song)
  when "list"
    list(song)
    run(song)
  when "play"
    play(song)
    run(song)
  when "exit"
    exit_jukebox
  end
end

class String
  def numeric?
    Float(self) != nil rescue false
  end
end
