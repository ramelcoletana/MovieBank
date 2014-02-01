class Movie
  include Mongoid::Document
  include Mongoid::Paperclip

  field :title, type: String
  field :description, type: String
  field :no_of_download, type: Integer
  field :rating, type: Float

  has_many :movie_files
  attr_accessor :movies_attributes
  accepts_nested_attributes_for :movie_files, allow_destroy: true

end