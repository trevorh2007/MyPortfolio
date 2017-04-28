module NameHelper

	def myName
		[
			{
			url: about_me_path,
			title: "Trevor Howard"
			}
		]
	end

  def name_helper style, tag_type
  name_link = ''

  myName.each do |item|
    name_link << "<#{tag_type}><a href='#{item[:url]}' class='#{style} #{name_active? item[:url]}'>#{item[:title]}</a></#{tag_type}>"

  end

    name_link.html_safe
  end

	def name_active? path
    "active" if current_page? path
  end
end