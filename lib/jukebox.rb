# Add your code here

#

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
  puts "I accept the following commands:"
  puts "- help : displays this help message"
  puts "- list : displays a list of songs you can play"
  puts "- play : lets you choose a song to play"
  puts "- exit : exits this program"
end

def list(songs)
  songs.each_with_index do |name, index|
    puts "#{index+1}. #{name}"
  end
end

def play(songs)
  puts "Please enter a song name or number:"
  input = gets.strip
      if (1..9).to_a.index(input.to_i) != nil
        puts "Playing #{songs[input.to_i - 1]}"
      elsif songs.index(input) != nil
        puts "Playing #{input}"
      else
        puts "Invalid input, please try again"
      end
end

def exit_jukebox
  puts "Goodbye"
end



def run(songs)
  puts "Please enter a command:"
  input = gets.strip
      case input 
        when 'exit'
          exit_jukebox
        when 'help'
          help
        when 'list'
          list(songs)
        when 'play'
          play(songs)
        end
  end

