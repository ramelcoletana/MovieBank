module MoviesHelper
  def movie_file_map(mf)
    movie_file_a = mf.file
    if(movie_file_a.content_type == 'image/png')
      return image_tag movie_file_a.url(:thumb)
    else
      return mf
    end

  end
end
