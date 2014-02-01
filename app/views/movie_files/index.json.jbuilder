json.array!(@movie_files) do |movie_file|
  json.extract! movie_file, :id
  json.url movie_file_url(movie_file, format: :json)
end
