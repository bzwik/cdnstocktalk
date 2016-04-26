class Post < ActiveRecord::Base
	acts_as_votable
	searchkick
	belongs_to :user
	has_many :comments

	has_attached_file :image, styles: { medium: "300x300", thumb: "100x64#" }, default_url: ""
  validates_attachment_content_type :image, content_type: /\Aimage\/.*\Z/
end
