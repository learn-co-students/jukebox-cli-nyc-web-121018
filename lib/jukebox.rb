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
puts "I accept the following commands:
- help : displays this help message
- list : displays a list of songs you can play
- play : lets you choose a song to play
- exit : exits this program"
end

def play(songs)
picked_song = 0
	puts "Please enter a song name or number:"
	input = gets.chomp
	songs.each_with_index do |song, idx|
		if input == song || input == (idx+1).to_s
			picked_song = song
		end
	end
	if picked_song == 0
		puts "Invalid input, please try again"
	else
		puts "Playing #{picked_song}"
	end
end

def exit_jukebox
  puts "Goodbye"
end


def list(songs)
songs.each_with_index do|song_name, idx|
  idx = idx + 1
  puts "#{idx}. #{song_name}"
end
end

def run(songs)
  help
  input = 0

  while input != "exit"
  puts "Please enter a command:"
  input = gets.chomp

  case
  when input == "help"
    help
  when input == "list"
    list(songs)
  when input == "play"
    play(songs)

else
  puts "Invalid input, please try again"

end
end
exit_jukebox
end
