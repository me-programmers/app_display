class Pasar < ActiveRecord::Base
  attr_accessible :lokasi, :nama

  validates :nama, :presence => true
  validates :lokasi, :presence => true,
  					:length => { :minimum => 10 }
  
  has_many :komoditis, :dependent => :destroy
end
