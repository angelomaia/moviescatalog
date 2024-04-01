class GendersController < ApplicationController
    def show
        @gender = Gender.find(params[:id])
        @movies = @gender.movies
    end

    def new
        @gender = Gender.new
    end

    def create
        @gender = Gender.new(name: params[:gender][:name])

        if @gender.save
            flash[:notice] = 'Gênero salvo com sucesso!'
            return redirect_to(new_gender_path)
        end

        render :new
    end

    def edit
        @gender = Gender.find(params[:id])
    end

    def update
        @gender = Gender.find(params[:id])

        if @gender.update(name: params[:gender][:name])
            return redirect_to gender_path(@gender.id)
        end

        render :edit
    end
end