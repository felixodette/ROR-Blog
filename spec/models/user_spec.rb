require 'rails_helper'

RSpec.describe User, type: :model do
  subject { User.new(name: 'Jane', photo: 'Link to photo', bio: 'HR') }
  before { subject.save }

  it 'Name should be present' do
    subject.name = nil
    expect(subject).to_not be_valid
  end

  it 'Returns posts' do
    Post.create(author: subject, title: 'test', text: 'test')
    posts = subject.recent_posts
    expect(posts.length).to eq 1
  end
end
