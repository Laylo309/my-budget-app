require 'rails_helper'

RSpec.describe Category, type: :model do
  before :each do
    user = User.new(id: 1, name: 'Laylo')
    user.email = 'foo1@foo.com'
    user.password = 'admin123'
    user.password_confirmation = 'admin123'
    user.save
  end

  subject do
    @category = Category.create(
      name: 'Anything',
      icon: 'icon',
      user_id: 1
    )
  end

  before { subject.save }

  it 'is valid with valid attributes' do
    expect(subject).to be_valid
  end

  it 'is not valid with invalid name' do
    subject.name = nil
    expect(subject).to_not be_valid
  end

  it 'is not valid with invalid icon' do
    subject.icon = ''
    expect(subject).to_not be_valid
  end
end
