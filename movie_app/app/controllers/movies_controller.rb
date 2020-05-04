class MoviesController < ApplicationController
  # list of movies
  def index
    @movies = Movie.order(created_at: :desc)
  end

  # display the new form
  def new
    @movie = Movie.new
  end

  # post to create a movie
  def create
    #create a movie with new with the movie params
    # save to db
    # redirect

    @movie = Movie.new(movie_params)

    if @movie.save
      redirect_to(movies_path)
    else
      render :new
    end


  end

  # Display one movie
  def show
    @movie = Movie.find(params[:id])
    @reviews = @movie.reviews
    @review = Review.new
  end

  private

  def movie_params
    params.require(:movie).permit(
      :title,
      :image_url,
      :director,
      :description,
      :date_release,
      :runtime_in_minutes
    )
  end
end
