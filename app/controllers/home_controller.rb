class HomeController < ApplicationController
    def index
    end

    def movies
        @genders = Gender.all
        @directors = Director.all
        @movies = Movie.all
    end

    def genders
        @genders = Gender.all
        @movies = Movie.all
    end

    def directors
        @directors = Director.all
        @movies = Movie.all
    end
end