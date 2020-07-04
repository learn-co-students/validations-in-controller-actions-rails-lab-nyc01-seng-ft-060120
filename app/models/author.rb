class Author < ActiveRecord::Base
    validates :name, presence: true
    validates :email, uniqueness: { case_sensitive: false }
end
