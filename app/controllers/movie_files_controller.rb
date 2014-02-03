class MovieFilesController < ApplicationController

  def new
    @movie_files = MovieFile.new
  end

  def create
    @movie_files = MovieFile.new(movie_files_params)

    respond_to do |format|
      if @movie_files.save
        puts "RETURNED ID #{@movie_files._id}"
      else
        puts 'Error'
      end
    end
  end

  def movie_files_params
    params.require(:movie_files).permit(:attachments)
  end
end