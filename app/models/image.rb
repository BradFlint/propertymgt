class Image < ApplicationRecord
	belongs_to :property
	# paperclip gem used to allow the landlord to imput property images
	has_attached_file :picture, styles: { medium: "300x300>", thumb: "100x100>" }, 
	default_url: "/images/:style/missing.png"
	validates_attachment_content_type :picture, content_type: /\Aimage\/.*\z/

	do_not_validate_attachment_file_type :image
end
