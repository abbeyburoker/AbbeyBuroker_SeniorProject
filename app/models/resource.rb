class Resource < ApplicationRecord
	def self.search(search)
		if search
			#find(:all, :conditions => ['name LIKE ?', "%#{search}%"])
			where("name LIKE ?", "%#{search}%")
		else
			scoped
		end
	end
end
