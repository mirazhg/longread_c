class Field < ActiveRecord::Base
  belongs_to :article
  has_many :cards
  mount_uploader :caver_pict, CaverPictUploader
  default_scope { order(:id) }
  # default_scope { where(teg: true) }
end
