class Portfolio < ApplicationRecord
	has_many :technologies
	include Placeholder
	validates_presence_of :title, :body, :main_image, :thumb_image

	def self.angular
		where(subtitle: 'Angular')
	end

	scope :ruby_on_rails_portfolio_items, -> { where(subtitle: 'Ruby on Rails')}

	after_initialize :set_defaults

	def set_defaults
		self.main_image ||= Placeholder.image_generator(height: '600', width: '400')
		self.thumb_image ||= "https://lh3.googleusercontent.com/proxy/1kDS9T2f_v3dunkwoTbdfTxbR35d2InFAk9F7aT61yy2VKMtN_DEj7wCf2-IRxUMow=w480-h270-p"
	end
end