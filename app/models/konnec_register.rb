class KonnecRegister < ActiveRecord::Base
	enum university: { "Kasetsart University": 0, "Chulalongkorn University": 1 }
	enum year: { "1": 1, "2": 2, "3": 3, "4": 4, "other": 0}
	enum size: { "S อก 34 นิ้ว": 1, "M อก 36 นิ้ว": 2, "L อก 40 นิ้ว": 3, "XL อก 42 นิ้ว": 4, "2XL อก 44 นิ้ว":5, "3XL อก 46 นิ้ว": 6, "4XL อก 48 นิ้ว": 7, "5XL อก 50 นิ้ว": 7 }
	validates :first_name, presence: true
	validates :last_name, presence: true
	validates :nickname, presence: true
end