class Pasar < ActiveRecord::Base
  attr_accessible :lokasi, :nama, :imgbg
  mount_uploader :imgbg, ImgbgUploader
  validates :nama, :presence => true
  validates :lokasi, :presence => true,
  					:length => { :minimum => 10 }
  validates :imgbg, :presence => true,
  					:length => { :minimum => 10 }
  has_many :komoditis, :dependent => :destroy
end
