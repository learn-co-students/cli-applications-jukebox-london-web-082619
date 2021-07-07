# Add your code here
# def say_hello(name)
#   "Hi #{name}!"
# end

# puts "Enter your name:"
# users_name = gets.strip 

# puts say_hello(users_name)
require 'pry'
def help
  puts "I accept the following commands:"
   puts " - help : displays this help message"
    puts " - list : displays a list of songs you can play"
      puts " - play : lets you choose a song to play"
        puts " - exit : exits this program"
        
end


def list(songs)
  songs.each_with_index{|s,index|
  puts "#{index + 1}. #{s}"
  }
end


def play(songs)
  puts "Please enter a song name or number:"
  user_input = gets.strip 
  # binding.pry
   if  user_input.to_i >= 1 && user_input.to_i <= songs.length
    puts "Playing #{songs[user_input.to_i - 1]}"
    elsif songs.include?(user_input)
    puts "Playing #{songs.find{|x|x == user_input}}"
  else
    puts "Invalid input, please try again."
 end
end

def exit_jukebox()
  puts "Goodbye"
end


def run(songs)
  puts "Please enter a command:"
  user_input = gets.strip
  if user_input == "list"
  list(songs)
  elsif user_input == "play"
    play(songs)
  elsif user_input == "help" 
    help
  else 
    exit_jukebox
  
    end
end

