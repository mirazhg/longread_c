class Article < ActiveRecord::Base
  mount_uploader :pict, PictUploader
  has_many :fields
  default_scope { order(:id) }
end
