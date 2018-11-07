class MenuReviewsController < ApplicationController
  def index
    @movies = Movie.all.order(:title)
  end

  def show
    begin
      id = params[:id] # retrieve movie ID from URI route
      @movie = Movie.find(id) # look up movie by unique ID
      # will render app/views/movies/show.html.haml by default
    rescue
      flash[:warning] = "Movie with id #{id} do not exist."
      redirect_to movies_path
    end
  end

  def new
    # default: render 'new' template
  end

  def create
    @movie = Movie.create!(movie_params)
    flash[:notice] = "#{@movie.title} was successfully created."
    redirect_to movies_path
    #redirect_to movie_path(@movie)
  end

  def edit
    id = params[:id]
    @movie = Movie.find(id)
  end

  def update
    id = params[:id]
    @movie = Movie.find(id)
    @movie.update_attributes!(movie_params)
    flash[:notice] = "#{@movie.title} was successfully updated."
    redirect_to movie_path(@movie)
  end

  def destroy
    id = params[:id]
    @movie = Movie.find(id)
    @movie.destroy
    flash[:notice] = "Movie '#{@movie.title}' deleted."
    redirect_to movies_path
  end

  def movie_params
      params.require(:movie).permit(:title, :rating, :description, :release_date)
  end

end