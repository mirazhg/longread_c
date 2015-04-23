class Article < ActiveRecord::Base
  mount_uploader :pict, PictUploader
  belongs_to :user
  has_many :fields
  default_scope { order(:id) }
end
