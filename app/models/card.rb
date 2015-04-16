class Card < ActiveRecord::Base
  belongs_to :field
  mount_uploader :caver_pict, CaverPictUploader
end
