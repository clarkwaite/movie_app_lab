class FilmsController < ApplicationController
  def index
    @films = Film.all
  end

  def show
    @film = Film.find(params[:id])
  end

  def new
    @film = Film.new
  end

  def create
    @film = Film.create!(film_params)
      redirect_to "/films/#{@film.id}"
  end

  def edit
     @film = Film.find(params[:id])
  end

  def update
   @film = Film.find(params[:id])
   @film.update(film_params)
   redirect_to "/films/#{@film.id}"
  end
  
  def delete
    @film = Film.find(params[:id])
    @film.destroy

    redirect_to "/films"
  end

  private
  def film_params
    params.require(:film).permit(:title, :genre, :year, :synopsis, :picture)
  end

end