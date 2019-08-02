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
    puts "/I accept the following commands:/"
    puts "/- help : displays this help message/"
    puts "/- list : displays a list of songs you can play/"
    puts "/- play : lets you choose a song to play/"
    puts "/- exit : exits this program/"
end 

def list(songs) 
    songs.each_with_index do |value,index|
        puts "#{index+1}. #{value}"
    end 
end 

def play(songs)
    puts "Please enter a song name or number:"
    value = gets.chomp
        if songs.include? value 
            puts "Playing #{value}"
        elsif value.to_i.between?(1, songs.length)
            puts "Playing #{songs[value.to_i-1]}"
        else
            puts"Invalid input, please try again"
        end 
    end  

def exit_jukebox
    puts "Goodbye"
end 

def run(command)
    if command == "help"
        help
    elsif command == "list"
        list
    elsif command == "play"
        play
    elsif command == "exit"
        exit 
    else exit 
    end 
end 
