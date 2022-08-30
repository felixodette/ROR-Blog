require 'rails_helper'

RSpec.describe Comment, type: :model do
  user = User.create(name: 'Tom', photo: 'https://unsplash.com/photos/F_-0BxGuVvo', bio: 'Teacher from Mexico.')
  post = Post.create(author: user, title; 'Hello', text: 'This is my first post')

  subject { Comment.new(post:, author: user, text: 'this is where the comment goes')}

  before { subject.save }

  it 'There should be one comment.' do
    expect(post.comments_count).to eq 1
  end
end
