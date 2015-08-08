class Provider < ActiveRecord::Base
	has_many :goods_providers
	has_many :goods, through:  :goods_providers
end
