class KonnecRegister < ActiveRecord::Base
	enum university: { "Kasetsart University": 0, "Chulalongkorn University": 1 }
	enum size: { s: 0, m: 1, l: 2, xl: 3, "xxl":4, "3xl": 5, "4xl": 6 }
end
