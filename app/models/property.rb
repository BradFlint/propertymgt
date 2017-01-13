class Property < ApplicationRecord

	has_one :tennant

	has_attached_file :avatar, styles: { medium: "300x300>", thumb: "100x100>" }, 
	default_url: "/images/:style/missing.png"
	validates_attachment_content_type :avatar, content_type: /\Aimage\/.*\z/

	scope :listed, -> { where(listed: true) }
	
	def statusChange
		self.listed = !self.listed
		save
	end
end
