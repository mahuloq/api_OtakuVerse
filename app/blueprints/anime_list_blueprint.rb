# frozen_string_literal: true

class AnimeListBlueprint < Blueprinter::Base

    identifier :id
    
    view :normal do
        fields :anime_id, :user_id, :list_type, :start_date, :end_date, :episodes_watched
    end

    view :anime_list do
        fields :anime_id, :user_id, :list_type, :start_date, :end_date, :episodes_watched
    end

    view :anime_page do
        fields :anime_id, :user_id, :list_type, :start_date, :end_date, :episodes_watched

        association :rating, blueprint: RatingBlueprint, view: :anime_list
    end
end
