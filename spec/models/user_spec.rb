require 'rails_helper'

RSpec.describe User, type: :model do
  let(:user) { build(:user) }

  it 'has a first_name' do
    expect(user.first_name).to eq 'John'
  end
end
