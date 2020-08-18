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


def play(arr)
  arr.each_with_index do |line, ind|
    puts "#{ind + 1}. #{line}"
  end
  puts "Please enter a song name or number:"
  user_input = gets.chomp
  if (1..arr.length) === user_input.to_i || arr.include?(user_input)
    if (1..arr.length) === user_input.to_i
      puts "Playing #{arr[user_input.to_i - 1]}"
    else
      puts "Playing #{user_input}"
    end
  else
    puts "Invalid input, please try again"
  end
  input_loop(arr)
end


def list(arr)
  arr.each_with_index do |line, ind|
    puts "#{ind + 1}. #{line}"
  end
end


def exit_jukebox
  puts "Goodbye"
end

def input_loop(arr)
  puts "Please enter a command:"
  user_input = gets.chomp
  if user_input.downcase == "exit"
    exit_jukebox
  else
    case user_input.downcase
    when "help"
      help
      input_loop(arr)
    when "play"
      play(arr)
    when "list"
      list(arr)
      input_loop(arr)
    else
      puts "Invalid input, please try again"
      #input_loop(arr)
    end
  end
end

def run(arr)
  help
  input_loop(arr)
end

#run(songs)