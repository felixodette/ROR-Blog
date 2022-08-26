class Comment < ApplicationRecord
  belongs_to :post, counter_cache: true
  belongs_to :author, class_name: 'User', foreign_key: true
  
  def update_comments_counter
    post.increment!(:comments_count)
  end
end
