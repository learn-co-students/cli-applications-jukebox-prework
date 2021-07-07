require "pry"

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

def play(songs)
  puts "Please enter a song name or number:"
  response = gets.strip
  
  # determine if response is greater than or equal to 1 and less than array.length (or if its less than or equal to array.length -1)
  
       if response.to_i >= 1 && response.to_i <= songs.length - 1
         puts "Playing #{songs[response.to_i-1]}"
       elsif songs.include?(response)
         song_name = songs.find do |song| 
         song == response
         end
         puts "Playing #{song_name}"
      else 
         puts "Invalid input, please try again."
      end
 
end

def list(songs) 
  songs.each_with_index do |song_name, index|
    puts "#{index+1}. #{song_name}"
  end
end 

def exit_jukebox
  puts "Goodbye"
end

def run(songs)
    puts "Please enter a command:"
    user_input = gets.strip
    
    loop do 
      case user_input
        when "exit"
          exit_jukebox
          break
        when "help"
          help
          puts "Please enter a command:"
          user_input = gets.strip
        when "play"
          play(songs)
          puts "Please enter a command:"
          user_input = gets.strip
        when "list"
          list(songs)
          puts "Please enter a command:"
          user_input = gets.strip
      end
    end

end