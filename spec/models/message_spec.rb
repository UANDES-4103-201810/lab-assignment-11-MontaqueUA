require 'rails_helper'

RSpec.describe Message, type: :message do
  it 'valid message test' do
    @user = create(:user, username: "Monty", email:"monty@monty.monty", password:"montymonty")
    @message = build(:message, user_id: 1, date: "2-2-2018", content: "dafuk")
    expect(@message).to be_valid
  end
  it 'user nil test' do
    @message = build(:message, user_id: nil, date: "2-2-2018", content: "dafuk")
    expect(@message).to_not be_valid
  end
  it 'valid message test' do
    @message = build(:message, user_id: 1, date: "2-2-2018", content: "dafuk")
    expect(@message).to_not be_valid
  end
end
