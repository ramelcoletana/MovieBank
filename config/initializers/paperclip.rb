=begin
Paperclip.interpolates :movie_title do |attachment, style|
  attachment.instance.movie_id
end=end
