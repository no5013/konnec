class KonnecRegister < ActiveRecord::Base
	enum university: { "Kasetsart University": 0, "Chulalongkorn University": 1 }
	enum year: { "1": 1, "2": 2, "3": 3, "4": 4, "other": 0}
	enum size: { xs: 0, s: 1, m: 2, l: 3, xl: 4, "xxl":5, "3xl": 6, "4xl": 7 }
end
