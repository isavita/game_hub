class Game < ActiveRecord::Base
  belongs_to :user

  has_attached_file :avatar, styles: { medium: '250x250>', thumb: '100x100>', small: '75x75>' }, default_url: "/images/:style/missing.png"
  validates_attachment_content_type :avatar, content_type: /\Aimage\/.*\Z/
  validates_attachment_size :avatar, less_than: 5.megabytes
end
