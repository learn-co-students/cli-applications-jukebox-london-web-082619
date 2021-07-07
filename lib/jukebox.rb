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

#lists out the possible commands"
def help
  commands = {
    "help" => "displays this help message",
    "list" => "displays a list of songs you can play",
    "play" => "lets you choose a song to play",
    "exit" => "exits this program"
  }
  puts "I accept the following commands:"
  commands.each do |command, description|
    puts "- #{command} : #{description}"
  end
end

#outputs each song in the song array on a new line
def list(songs)
  songs.each do |song|
    i = songs.index(song) + 1
    puts "#{i}. #{song}"
  end
end

#can find a song when given a number from the user
def play(songs)
  puts "Please enter a song name or number:"
  request = gets.chomp
  # If the user's response is a valid song number or song name...
  if songs.include?(request)
    # the method should puts out: "Playing <song name>".
    puts "Playing #{request}"
  elsif request.to_i > 0 && request.to_i < songs.length
    puts "Playing #{songs[request.to_i - 1]}."
  else
    # Otherwise, it should puts out: "Invalid input, please try again".
    puts "Invalid input, please try again"
  end
end

#terminates the running of the program and outputs 'Goodbye'
def exit_jukebox
  puts "Goodbye"
  exit
end

def run(songs)
  help
  input = nil
  until input == "exit"
    puts "Please enter a command:"
    input = gets.chomp
    if input == "help"
      help
    elsif input == "list"
      list(songs)
    elsif input == "play"
      play(songs)
    elsif input == "exit"
      exit_jukebox
    else
    end
  end
end
