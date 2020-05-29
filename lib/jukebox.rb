
def help
puts "I accept the following commands:"
puts "- help : displays this help message"
puts " - list : displays a list of songs you can play"
puts "- play : lets you choose a song to play"
puts "- exit : exits this program"
end

def list(songs)
    songs.each_with_index do |song, num|
        puts "#{num + 1}. #{song}"
    end
end

def play(songs)
    puts "Please enter a song name or number:"
    selection = gets.chomp
    if !songs.include?(selection)
        selection = selection.to_i
        if selection == 0
            return puts "Invalid input, please try again"
        end
        selection = selection - 1
        if !songs[selection]
            return puts "Invalid input, please try again"
        end
        puts "Playing #{songs[selection]}."
    else
    song_index = songs.find_index(selection)
    puts "Playing #{songs[song_index]}."
    end
end

def exit_jukebox
    puts "Goodbye!"
end

def run(songs)
    help
    command = ""
    while command != 'exit'
        puts "Please enter a command:"
        command = gets.chomp
        case command
        when "list"
            list(songs)
        when "play"
            play(songs)
        when "help"
            help
        when 'exit'
            exit_jukebox
        end
    end
end