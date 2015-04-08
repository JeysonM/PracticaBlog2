class Post < ActiveRecord::Base

	validates :title, presence: true, uniqueness: true
	validates :content, presence: true #, length:{minimum 25}

	has_many :coments

	before_save :initialize_like

	def initialize_like
		if self.like==nil
			self.like = 0
		end 
	end


end
