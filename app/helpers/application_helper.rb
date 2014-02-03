module ApplicationHelper
  def display_errors *models
    out = ""

    models.each do |model|
      if model.errors.any?
        out = "<div>"
        model.errors.full_messages.each do |err|
          out << "<p>#{err}</p>"
        end
        out << "</div>"
      end
    end

    return raw out
  end
end
