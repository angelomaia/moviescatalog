class HomeController < ApplicationController
    def index
        @genders = Gender.all
        @directors = Director.all
        @movies = Movie.all
    end
end