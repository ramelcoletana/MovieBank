json.array!(@movies) do |movie|
  json.extract! movie, :id, :title, :description, :no_of_download, :rating
  json.url movie_url(movie, format: :json)
end
