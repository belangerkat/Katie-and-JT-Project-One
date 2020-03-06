# # Whirly.configure spinner: "dots"

# # Whirly.start do
# #   sleep 2
# # end


# def view_favorite_genres  #view all favorite genres from that user
#     #we want User_instantce.genre
#     puts @new_user.genres.map(&:genre_name)
#     user_artist_selections 
# end

# # def user_artist_selection(genre_choice)
# #     prompt.select("Please add this genre to your favorites or choose an artist you like in this genre:", genre_artists(genre_choice)+ add_favorite_option + main_menu_option)
# # end
# def user_genre_selection
#     @user_genre_selection_result = prompt.select("Please choose a Genre:", genre_names)
# end

# def user_artist_selections 
#     @user_artist_selection_result = prompt.select("Please add this genre to your favorites or choose an artist you like in this genre:", genre_artists(@user_genre_selection_result)+add_favorite_option+my_favorites+main_menu_option)
#     user_artist_and_song_selections
# end

# def user_artist_and_song_selections
#     #user_genre_selection = prompt.select("Please choose a Genre:", genre_names)
#     user_artist_selection =  @user_artist_selection_result
    
#     if user_artist_selection == add_favorite_option.join
#         puts "Added to Favorites!"
#         add_favorite(genre_selection(@user_genre_selection_result))
#         #user_artist_selection = @user_genre_selection_result
#         user_artist_selections 

#     elsif user_artist_selection == main_menu_option.join
#         user_genre_selection
#         user_artist_selections
#     elsif user_artist_selection == my_favorites.join
#         #binding.pry

#         view_favorite_genres
#         user_artist_selections
#     else
#         user_song_selection = prompt.select("Here are #{user_artist_selection}'s Top Two Songs!", artist_songs(@user_artist_selection_result)+main_menu_option)
#         if user_song_selection == main_menu_option.join
#             user_genre_selection
#             user_artist_selections 
#         end
#     end
# end
# end