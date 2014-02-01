class MovieFile
  include Mongoid::Document
  include Mongoid::Paperclip

  belongs_to :movie
  has_mongoid_attached_file :attachments,
                            :path => ':rails_root/public/movies/:attachment/:id/:style/:filename',
                            :url => '/movies/:attachment/:id/:style/:filename'

end
