class MoviesController < ApplicationController
  before_action :set_movie, only: %i[ show edit update destroy ]
  before_action :authenticate_user!, except: [:index, :show]

  def index
    if params[:category].blank?
      @movies = Movie.page(params[:page]).order("created_at DESC")
    else
      @category_id = Category.find_by(name: params[:category]).id
      @movies = Movie.where(category_id: @category_id).page(params[:page]).order("created_at DESC")
    end
  end

  def show
    @reviews = Review.where(movie_id: @movie.id).order("created_at DESC")
  end

  def new
    @movie = current_admin_user.movies.build
    @categories = Category.all.map { |c| [c.name, c.id] }
  end

  def edit
    @categories = Category.all.map { |c| [c.name, c.id] }
  end

  def create
    @movie = current_admin_user.movies.build(movie_params)
    @movie.category_id = params[:category_id]

    respond_to do |format|
      if @movie.save
        redirect_to movie_url(@movie)
      else
        render :new
      end
    end
  end

  def update
    @movie.category_id = params[:category_id]
    if @movie.update(movie_params)
      redirect_to movie_url(@movie)
    else
      render :edit
    end
  end

  def destroy
    @movie.destroy

    redirect_to movies_url
    end
  end

  private

  def set_movie
    @movie = Movie.find(params[:id])
  end

  def movie_params
    params.require(:movie).permit(:title, :description, :rating, :category_id, :image)
  end
