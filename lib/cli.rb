require "tty-prompt" #can i put it else where/ within environment?

class Cli 
    def welcome
        puts "Welcome to Discover New Music!"
        puts "Create a user name"

        user = gets.strip
        new_user = User.create({user_name:user})
    end

    def prompt
        TTY::Prompt.new
    end

    def genre_selection
        Genre.all.map do |genre|
            genre.genre_name
        end
        #Genre.all.map(&:genre_name)
    end

    def add_favorite(genre)
        Favorite.create(user: new_user, genre: genre)
    end
    
    def artist_selection(choice)
        favorite_genre = Genre.all.find do |genre|
            genre.genre_name == choice
        end
        artist_selection = favorite_genre.artists.map do |artist|
            artist.name
        end
    end

    def song_selection(genre_choice)
        favorite_artist = Artist.all.find do |artist|
            artist.name == genre_choice
        end
        song_selection = favorite_artist.songs.map do |song|
            song.name
        end
    end

    def pick_favorites
        choice = prompt.select("Please choose a Genre:", genre_selection)
        # %w(Pop Rock Dance Hip-Hop/Rap Country))
        # =>
        # Choose your destiny? (Use ↑/↓ arrow keys, press Enter to select)
        # ‣ Pop
        # Rock
        # Dance



        # if choice == "Pop"
        #     pop_choice = prompt.select("Please choose an artist you like in this genre:", artist_selection)
        # elsif choice == "Rock"
        #     rock_choice = prompt.select("Please choose an artist you like in this genre:", artist_selection)
        # elsif choice == "Dance"
        #     dance_choice = prompt.select("Please choose an artist you like in this genre:", artist_selection)
        # elsif choice == "Hip-Hop/Rap"
        #     hip_hop_rap_choice = prompt.select("Please choose an artist you like in this genre:", artist_selection)
        # else #choice == "Country"
        #     country_choice = prompt.select("Please choose an artist you like in this genre:", artist_selection)
        # end
        genre_choice = prompt.select("Please choose an artist you like in this genre:", artist_selection(choice))
        #add_joint = add_favorite(favorite_genre)

        
    end

end