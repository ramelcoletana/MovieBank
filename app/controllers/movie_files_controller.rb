class MovieFilesController < ApplicationController
  before_action :set_movie_file, only: [:show, :edit, :update, :destroy]

  # GET /movie_files
  # GET /movie_files.json
  def index
    @movie_files = MovieFile.all
  end

  # GET /movie_files/1
  # GET /movie_files/1.json
  def show
  end

  # GET /movie_files/new
  def new
    @movie_file = MovieFile.new
  end

  # GET /movie_files/1/edit
  def edit
  end

  # POST /movie_files
  # POST /movie_files.json
  def create
    @movie_file = MovieFile.new(movie_file_params)

    respond_to do |format|
      if @movie_file.save
        format.html { redirect_to @movie_file, notice: 'Movie file was successfully created.' }
        format.json { render action: 'show', status: :created, location: @movie_file }
      else
        format.html { render action: 'new' }
        format.json { render json: @movie_file.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /movie_files/1
  # PATCH/PUT /movie_files/1.json
  def update
    respond_to do |format|
      if @movie_file.update(movie_file_params)
        format.html { redirect_to @movie_file, notice: 'Movie file was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @movie_file.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /movie_files/1
  # DELETE /movie_files/1.json
  def destroy
    @movie_file.destroy
    respond_to do |format|
      format.html { redirect_to movie_files_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_movie_file
      @movie_file = MovieFile.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def movie_file_params
      params[:movie_file]
    end
end
