require "tty-prompt" #can i put it else where/ within environment?

class Cli 
    
    def pick_artist
        prompt = TTY::Prompt.new
        prompt.select("Please choose a Genre:", %w(Pop Rock Dance Hip-Hop Country))
        # =>
        # Choose your destiny? (Use ↑/↓ arrow keys, press Enter to select)
        # ‣ Pop
        # Rock
        # Dance
    end

end