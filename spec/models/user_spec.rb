require 'rails_helper'

RSpec.describe User, type: :model do
  before :each do
    user = User.new(id: 1, name: 'Laylo')
    user.email = 'foo1@foo.com'
    user.password = 'admin123'
    user.password_confirmation = 'admin123'
    user.save
  end

  subject do
    @user = User.create(
      name: 'Anything',
      email: 'foo1@foo1.com',
      password: 'password'
    )
  end

  before { subject.save }

  it 'is valid with valid attributes' do
    expect(subject).to be_valid
  end

  it 'is not valid with invalid quantity' do
    subject.name = nil
    expect(subject).to_not be_valid
  end
end