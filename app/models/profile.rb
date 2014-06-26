class Profile
  include Mongoid::Document
  include Mongoid::Paperclip

  has_mongoid_attached_file :image
  validates_attachment_file_name :image, :matches => [/png\Z/, /jpe?g\Z/]

  belongs_to :user

  field :first_name, type: String
  field :last_name, type: String
  field :bio, type: String

end