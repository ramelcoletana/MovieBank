class Movie
  include Mongoid::Document
  include Mongoid::Paperclip

  field :title, type: String
  field :description, type: String
  field :no_of_download, type: Integer
  field :rating, type: Float

  has_many :movie_files
  attr_accessor :attachments
=begin
  has_mongoid_attached_file :attachments,
                            :path => ':rails_root/public/movies/:attachment/:id/:style/:filename',
                            :url => '/movies/:attachment/:id/:style/:filename'
=end
end