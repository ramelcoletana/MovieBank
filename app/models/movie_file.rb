class MovieFile
  include Mongoid::Document
  include Mongoid::Paperclip
  belongs_to :movie, class_name: 'Movie'

  has_mongoid_attached_file :file,
                            :path => ":rails_root/public/movies/:attachment/:id/:style/:filename",
                            :url => "/movies/:attachment/:id/:style/:filename",
                            :styles => {
                                :thumb    => ['500x500>']
                            }
  validates_attachment_content_type :file, content_type: /^image\/(jpg|jpeg|pjpeg|png|x-png|gif)$/, :message => 'file type is not allowed (only jpeg/png/gif images)'

end
