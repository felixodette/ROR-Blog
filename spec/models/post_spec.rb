require 'rails_helper'

RSpec.describe Post, type: :model do
  user = User.create(name: 'Jane', photo: 'Link to photo', bio: 'dev')

  subject do
    Post.new(author: user, title: 'Development on rails', text: 'My first post')
  end

  before { subject.save }

  it 'The title should be present' do
    subject.title = nil
    expect(subject).to_not be_valid
  end

  it 'Returns comments' do
    Comment.create(post: subject, author: user, text: 'test')
    comments = subject.recent_comments
    expect(comments.length).to eq 1
  end
end
