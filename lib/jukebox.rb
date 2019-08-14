#require "pry"
#binding.pry
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

def list(songs)
  songs.each_with_index { |item, index|
    puts "#{index+1}. #{item}" }
end

def play(songs)
  puts "Please enter a song name or number:"
  user_response = gets.chomp #gets.chomp is used to take string input from users.
  if (1..9).to_a.include?(user_response.to_i) #The 'to_a' simply tells Ruby: "take this range of 9 numbers
    puts "Playing #{songs[user_response.to_i - 1]}" #and turn it into an array of numbers".
  elsif songs.include?(user_response) #include? Returns true if the given object is present in self,
    puts "Playing #{user_response}" #(that is, if any element == object), otherwise returns false.
  else
    puts "Invalid input, please try again"
  end
end

def exit_jukebox
  puts "Goodbye"
end

def run(songs)
  control = ""
  while control
  puts "Please enter a command:"
  control = gets.strip #Strip returns a copy of str with le and trailing whitespace removed.
  case control #provides an easy way to forward exto different parts of code based on the value of the expression.
  when 'list'
      list(songs)
      when 'play'
        list(songs)
        play(songs)
      when 'help'
        help
      when 'exit'
        exit_jukebox
        break  # It will return the value you tell it to and put you right after where it was called.
      else
        help
      end
    end
  end
