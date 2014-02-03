class Movie
  include Mongoid::Document
  include Mongoid::Paperclip

  field :title, type: String
  validates :title, presence: true
  field :description, type: String
  field :no_of_download, type: Integer
  field :rating, type: Float

  has_many :movie_files, dependent: :destroy, class_name: 'MovieFile'
  accepts_nested_attributes_for :movie_files, :allow_destroy => true

end