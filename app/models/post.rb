class Post < ActiveRecord::Base
  validates_presence_of :title, allow_blank: false
  validates_inclusion_of :category, 
                          in: %w[Fiction Non-Fiction],
                          on: :create,
                          message: 'extension %s is not included in the list'

  validates :content, presence: true, length: { minimum: 100}

end
