class Region < ApplicationRecord

	validates :name, presence: true, uniqueness: {case_sensitive: false}, length: {minimum: 4}
end
