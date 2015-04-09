class Field < ActiveRecord::Base
  belongs_to :article
  mount_uploader :caver_pict, CaverPictUploader
end
