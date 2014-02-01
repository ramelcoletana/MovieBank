class MovieFile
  include Mongoid::Document
  include Mongoid::Paperclip

=begin
  field :path, type: string
  field :type, type: String
  field :size, type: Float
=end
  belongs_to :movie
  has_mongoid_attached_file :attachment,
                            :path => ':rails_root/public/movies/:attachment/:id/:style/:filename',
                            :url => '/movies/:attachment/:id/:style/:filename'


end
