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
  help_text = [
    "I accept the following commands:",
    "- help : displays this help message",
    "- list : displays a list of songs you can play",
    "- play : lets you choose a song to play",
    "- exit : exits this program"]
    
  help_text.each { | line | puts line }
end

def list(songs)
  songs.each_with_index do | song, index |
    puts "#{index + 1}. #{song}"
  end
end

def play(songs)
  puts "Please enter a song name or number: "
  user_input = gets.strip
  int_input = user_input.to_i
  
  if songs.include?(user_input)
    puts "Playing #{user_input}"
  elsif (1..songs.length).include?(int_input)
    puts "Playing #{songs[int_input - 1]}"
  else
    puts "Invalid input, please try again."
  end
end
  
def exit_jukebox
  puts "Goodbye"
end

def run(songs)
  #help
  
  loop do
    puts "Please enter a command: "
    command = gets.strip.downcase
    
    case command
    when "exit"
      exit_jukebox
      break
    when "help"
      help
    when "list"
      list(songs)
    when "play"
      play(songs)
    end
  end
end