class DirectorsController < ApplicationController
    def show
        @director = Director.find(params[:id])
        @movies = @director.movies
    end

    def new
        @director = Director.new
    end

    def create
        @director = Director.new(name: params[:director][:name],
                                country: params[:director][:country],
                                birth: params[:director][:birth],
                                fav_gender: params[:director][:fav_gender])

        if @director.save
            flash[:notice] = 'Diretor salvo com sucesso!'
            return redirect_to(new_director_path)
        end

        render :new
    end

    def edit
        @director = Director.find(params[:id])
    end

    def update
        @director = Director.find(params[:id])
        if @director.update(name: params[:director][:name],
                            country: params[:director][:country],
                            birth: params[:director][:birth],
                            fav_gender: params[:director][:fav_gender])
            return redirect_to director_path(@director.id)
        end

        render :edit
    end
end