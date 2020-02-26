class Post < ActiveRecord::Base
    validates :title, presence: true
    validates :category, presence: true, inclusion: {in: %w(Fiction Non-Fiction)}
    validates :content, presence: true, length: {minimum: 100}
end
