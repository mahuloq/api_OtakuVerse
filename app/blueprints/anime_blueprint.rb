# frozen_string_literal: true

# This blueprint is for the anime page, or for pages that require info from the anime page
class AnimeBlueprint < Blueprinter::Base
    identifier :id

    # View from main page looking at anime, smaller crew/staff
    view :anime_page do 
        fields :english_title, :romanji_title, :start_air_date, :end_air_date, :number_of_episodes, :description, :season, :studio, :source, :duration, :age_rating, :cover_photo_url
    
        association :cast_and_crews, blueprint: CastAndCrewBlueprint, view: :anime_page

        association :reviews, blueprint: ReviewBlueprint, view: :anime_page

        association :genres, blueprint: GenreBlueprint, view: :genre_names

    end

# Provides all crew on extended staff page. Not Sure if I should provide here, or on the cast and crew blueprinter. Looks like above does the same thing.

# view :anime_page_staff do
#     fields :english_title, :romanji_title, :start_air_date, :end_air_date, :number_of_episodes, :description, :season, :studio, :source, :duration, :age_rating

#     association :cast_and_crew, blueprint: CastAndCrewBlueprint, view: :anime_page_detailed
# end 

# Provides title and season debut for person profile view
    view :person_profile do 
        fields :english_title, :season

    end

    view :top_anime do
        fields :english_title, :start_air_date, :end_air_date, :number_of_episodes, :season, :cover_photo_url
    end

    view :search_by_genre do 
        fields :english_title, :romanji_title, :start_air_date, :number_of_episodes, :description, :season, :studio, :source, :duration, :age_rating 
    end

    view :seasonal_anime do
        fields :english_title, :start_air_date, :end_air_date, :number_of_episodes, :season, :cover_photo_url, :description
    end

end
