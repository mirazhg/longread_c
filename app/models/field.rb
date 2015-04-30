class Field < ActiveRecord::Base
  FIELDS_NAME = ['caver', 'card','only_text','set_of_cards','slider']
  belongs_to :article
  has_many :cards
  mount_uploader :caver_pict, CaverPictUploader
  default_scope { order(:id) }
  # default_scope { where(teg: true) }
end
