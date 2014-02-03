class MovieFile
  include Mongoid::Document
  include Mongoid::Paperclip

  belongs_to :movie, class_name: 'Movie'
  has_mongoid_attached_file :file,
                            :path => ':rails_root/public/movies/:attachment/:id/:style/:filename',
                            :url => '/movies/:attachment/:id/:style/:filename'
=begin
                            :styles => {
                                :thumb    => ['500x500>']
                            }
=end

end
