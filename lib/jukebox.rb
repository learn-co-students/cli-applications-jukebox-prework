def help
    puts "I accept the following commands:"
    puts "- help : displays this help message"
    puts "- list : displays a list of songs you can play"
    puts "- play : lets you choose a song to play"
    puts "- exit : exits this program"
end

def list(songs)
    songs.each.with_index(1) {|s, i| puts "#{i}. #{s}"}
end

def play(songs)
    puts "Please enter a song name or number:"
    input = gets.chomp
    if songs.include?(input)
      puts "Playing #{input}"
    elsif (0..songs.length).include?(input.to_i - 1)
      puts "Playing #{songs[input.to_i - 1]}"
    else
      puts "Invalid input, please try again"
    end
  end

  def exit_jukebox
    puts "Goodbye"
  end

  def run(songs)
    help
    puts "Please enter a command:"
    input = gets.chomp
    until input == "exit" do 
      case input
          when "play"
            play(songs)
          when "list"
            list(songs)
          when "help"
            help
        end
        input = gets.chomp
      end
    exit_jukebox
  end