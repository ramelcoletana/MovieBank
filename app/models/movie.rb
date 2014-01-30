class Movie
  include Mongoid::Document

  field :title, type: String
  field :description, type: String
  field :no_of_download, type: Integer
  field :rating, type: Float

  embeds_many :movie_files

end