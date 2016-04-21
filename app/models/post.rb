class Post < ActiveRecord::Base
	searchkick
	belongs_to :user
	has_many :comments

	has_attached_file :image, styles: { medium: "550x500>", thumb: "200x80" }, default_url: ""
  validates_attachment_content_type :image, content_type: /\Aimage\/.*\Z/
end
