class Directory < ApplicationRecord
	def self.search(search)
		if search
			#find(:all, :conditions => ['name LIKE ?', "%#{search}%"])
			where("name || graduation_year LIKE ?", "%#{search}%")
		else
			scoped
		end
	end
end
