class MoviesController < ApplicationController
  before_action :set_movie, only: [:show, :edit, :update, :destroy]

  # GET /movies
  # GET /movies.json
  def index
    @movies = Movie.all

  end

  # GET /movies/1
  # GET /movies/1.json
  def show
    @movie = Movie.find(params[:id])
  end

  # GET /movies/new
  def new
    @movie = Movie.new
    @movie_file = MovieFile.new
  end

  # GET /movies/1/edit
  def edit
  end

  # POST /movies
  # POST /movies.json
  def create
    @movie = Movie.new(params[:movie])
    puts "Movie parameters: #{params[:movie_file][:file]}"
    movie_files = params[:movie_file][:file]

    @movie_files =[]
    movie_files.each do |movie_file|
      @movie_files << MovieFile.new(file: movie_file)
    end
    respond_to do |format|
      if @movie.valid? && @movie_files.each {|movie_file| movie_file.valid?}
        @movie_files.each {|movie_file| movie_file.save}
        @movie.movie_files = @movie_files.to_a
        puts "Movie files array: #{@movie.movie_files}"
        @movie.save
        format.html { redirect_to @movie, notice: 'Movie was successfully created.' }
        format.json { render action: 'show', status: :created, location: @movie }
      else
        format.html { render action: 'new' }
        format.json { render json: @movie.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /movies/1
  # PATCH/PUT /movies/1.json
  def update
    respond_to do |format|
      if @movie.update(movie_params)
        format.html { redirect_to @movie, notice: 'Movie was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @movie.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /movies/1
  # DELETE /movies/1.json
  def destroy
    @movie.destroy
    respond_to do |format|
      format.html { redirect_to movies_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_movie
      @movie = Movie.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def movie_params
      params.require(:movie).permit(:title, :description, :no_of_download, :rating)
    end

    def movie_file_params
      params.require(:movie_file).permit!
    end
end
