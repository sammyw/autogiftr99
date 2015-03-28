class Gift < ActiveRecord::Base

	mount_uploader :image, GiftImageUploader

	def self.order_by_name
		order(name: :asc)
	end
end
