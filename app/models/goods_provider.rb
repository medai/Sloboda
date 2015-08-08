class GoodsProvider < ActiveRecord::Base
  belongs_to :good
  belongs_to :provider
end
