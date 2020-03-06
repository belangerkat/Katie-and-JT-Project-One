require "tty-prompt" 

class Cli 
    attr_reader :new_user

    def welcome
        #welcome_pic = system("imgcat lib/StockSnap_QVGSXCGO6J.jpg")
        puts "Welcome to Discover Artist Music!"
        puts "Create a user name"

        user = gets.strip
        @new_user = User.create({user_name:user})
    end

    def prompt
        TTY::Prompt.new
    end

    def genre_names
        Genre.all.map do |genre|
            genre.genre_name
        end
    end

    def genre_selection(choice)
        Genre.all.find do |genre|
            genre.genre_name == choice
        end
    end
        
    def favorite_option
        ["Add Genre to Favorites"]
    end

    def main_menu_option
        ["Return to Main Menu"]
    end

    def my_favorites
        ["View my favorites"]
    end

    def add_favorite(genre)
        Favorite.create(user: new_user, genre: genre) 
    end
    
    def genre_artists(choice)
        genre_selection(choice).artists.map do |artist|
            artist.name
        end
    end

    def artist_songs(artist_choice)
        favorite_artist = Artist.all.find do |artist|
            artist.name == artist_choice
        end
        artist_songs = favorite_artist.songs.map do |song|
            song.name
        end
    end

    # def view_favorite_genres
    #     Favorite.user
    
    # end

    # def artist_choice_prompt(genre_choice)
    #     prompt.select("Please add this genre to your favorites or choose an artist you like in this genre:", genre_artists(genre_choice)+ favorite_option + main_menu_option)
    # end
    def genre_choice
        @genre_choice_result = prompt.select("Please choose a Genre:", genre_names)
    end

    def artist_choice_prompt
        @artist_choice_result = prompt.select("Please add this genre to your favorites or choose an artist you like in this genre:", genre_artists(@genre_choice_result)+favorite_option+main_menu_option)
        artist_choice_happy
    end

    def artist_choice_happy
        #genre_choice = prompt.select("Please choose a Genre:", genre_names)
        artist_choice =  @artist_choice_result
        
        if artist_choice == favorite_option.join
            puts "Added to Favorites!"
            add_favorite(genre_selection(@genre_choice_result))
            #artist_choice = @genre_choice_result
            artist_choice_prompt
        elsif artist_choice == main_menu_option.join
            genre_choice
            artist_choice_prompt
            
        else
            song_choice = prompt.select("Here are #{artist_choice}'s Top Two Songs!", artist_songs(@artist_choice_result)+main_menu_option)
            if song_choice == main_menu_option.join
                genre_choice
                artist_choice_prompt
                
            end
        end
    end


end