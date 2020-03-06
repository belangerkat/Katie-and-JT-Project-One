require "tty-prompt" 

class Cli 
    attr_reader :new_user

    def welcome
        #welcome_pic = system("imgcat lib/StockSnap_QVGSXCGO6J.jpg")
        puts "Welcome to Discover Artist Music!"
        puts "Create a user name"

        user = gets.strip
        @new_user = User.find_or_create_by(user_name: user)
    end

    def prompt
        TTY::Prompt.new
    end

    def genre_names
        Genre.all.map do |genre|
            genre.genre_name
        end
    end

    def genre_selection(user_genre_selection)
        Genre.all.find do |genre|
            genre.genre_name == user_genre_selection
        end
    end
        
    def add_favorite_option
        ["Add Genre to Favorites"]
    end

    def main_menu_option
        ["Return to Main Menu"]
    end

    def my_favorites
        ["View my favorites"]
    end

    def add_favorite(user_genre_selection)
        Favorite.create(user: new_user, genre: user_genre_selection) 
    end
    
    def genre_artists(user_genre_selection)
        genre_selection(user_genre_selection).artists.map do |artist|
            artist.name
        end
    end

    def artist_songs(user_artist_selection)
        artist_selection = Artist.all.find do |artist|
            artist.name == user_artist_selection
        end
        artist_selection.songs.map do |song|
            song.name
        end
    end

    def view_favorite_genres  #view all favorite genres from that user
        #we want User_instantce.genre
        # Favorite.all.select do |favorite|
        #     favorite.genre == @genre_choice_result
        # end

        @new_user.genres
        #binding.pry
        user_artist_selection
    end

    # def user_artist_selection(genre_choice)
    #     prompt.select("Please add this genre to your favorites or choose an artist you like in this genre:", genre_artists(genre_choice)+ add_favorite_option + main_menu_option)
    # end
    def user_genre_selection
        @user_genre_selection_result = prompt.select("Please choose a Genre:", genre_names)
    end

    def user_artist_selection
        @user_artist_selection_result = prompt.select("Please add this genre to your favorites or choose an artist you like in this genre:", genre_artists(@user_genre_selection_result)+add_favorite_option+my_favorites+main_menu_option)
        user_artist_and_song_selections
    end

    def user_artist_and_song_selections
        #user_genre_selection = prompt.select("Please choose a Genre:", genre_names)
        user_artist_selection =  @user_artist_selection_result
        
        if user_artist_selection == add_favorite_option.join
            puts "Added to Favorites!"
            add_favorite(genre_selection(@user_genre_selection_result))
            #user_artist_selection = @user_genre_selection_result
            user_artist_selection
        elsif user_artist_selection == main_menu_option.join
            user_genre_selection
            user_artist_selection
        elsif user_artist_selection == my_favorites.join
            view_favorite_genres
            user_artist_selection
        else
            user_song_selection = prompt.select("Here are #{user_artist_selection}'s Top Two Songs!", artist_songs(@user_artist_selection_result)+main_menu_option)
            if user_song_selection == main_menu_option.join
                user_genre_selection
                user_artist_selection
            end
        end
    end
end