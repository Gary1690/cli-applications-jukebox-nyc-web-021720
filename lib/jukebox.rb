# Add your code here
def say_hello(name)
  "Hi #{name}!"
end

def help
  puts "I accept the following commands:"
  puts "- help : displays this help message"
  puts "- list : displays a list of songs you can play"
  puts "- play : lets you choose a song to play"
  puts "- exit : exits this program"
end

def list(songs)
  songs.each_with_index{|song,index| puts "#{index+1}. #{song}"}
end

def play(songs)
  puts "Please enter a song name or number:"
  user_input = gets.strip
  if((1...songs.length) === user_input.to_i)
    puts "Playing #{songs[user_input.to_i-1]}"
  elsif songs.detect{|song| song == user_input} 
    puts "Playing #{user_input}"
  else
    puts "Invalid input, please try again"
    play(songs)
  end
end

def exit_jukebox
  puts "Goodbye"
end

def run(songs)
  user_selected_option = ""
  while user_selected_option != "exit"
    case user_selected_option
    when "help"
      help
    when "list"
      list(songs)
    when "play"
      play(songs)
    when "exit"
      exit_jukebox
    else
      puts "Invalid command"
    end
  end
end
