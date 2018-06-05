require 'support/factory_bot'

RSpec.describe User,type: :user do

  it 'should do something' do
    @user = build(:user, username: 'user', email: 'email@example.com', password: 'password123')
    expect(@user).to be_valid
  end
  it 'same usernames' do
    @user1 = create(:user, username: 'username1', email: 'email1@example.com', password: 'password123')
    @user2 = build(:user, username: 'username1', email: 'email2@example.com', password: 'password123')
    expect(@user2).to_not be_valid
  end
  it 'same emails' do
    @user1 = create(:user, username: 'username1', email: 'email1@example.com', password: 'password123')
    @user2 = build(:user, username: 'username2', email: 'email1@example.com', password: 'password123')
    expect(@user2).to_not be_valid
  end
  it 'long username' do
    @user1 = build(:user, username: 'namewithmorethan20chars', email: 'email1@example.com', password: 'password123')
    expect(@user1).to_not be_valid
  end
end