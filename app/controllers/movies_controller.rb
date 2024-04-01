class MoviesController < ApplicationController
    def show
        @movie = Movie.find(params[:id])
    end

    def new
        @movie = Movie.new
    end

    def create
        @movie = Movie.new( title: params[:movie][:title],
                            year: params[:movie][:year],
                            synopsis: params[:movie][:synopsis],
                            country: params[:movie][:country],
                            length: params[:movie][:length],
                            gender_id: params[:movie][:gender_id],
                            director_id: params[:movie][:director_id])
        if @movie.save
            return redirect_to movie_path(@movie.id)
        end
        render :new
    end
 
    def edit
        @movie = Movie.find(params[:id])
    end

    def update
        @movie = Movie.find(params[:id])

        if @movie.update( title: params[:movie][:title],
            year: params[:movie][:year],
            synopsis: params[:movie][:synopsis],
            country: params[:movie][:country],
            length: params[:movie][:length],
            gender_id: params[:movie][:gender_id],
            director_id: params[:movie][:director_id])
            return redirect_to movie_path(@movie.id)
        end

        render :edit
    end

    # def publish
    #     recipe = Recipe.find(params[:id])
    #     recipe.published!
    #     redirect_to recipe_path(recipe.id)
    # end
end