require 'rails_helper'
# require 'rspec'

RSpec.describe 'test some let variables', type: :foo do
  let(:my_name) do
    # This let "method" is run only once, then its return value is cached.
    # It is memoized
    puts 'thing about what my name is...'
    'Sammy'
  end

  xit 'returns my name' do
    # Run .my_name twice and notice what is outputted
    puts my_name
    puts my_name
  end
end

RSpec.describe 'let' do
  # jason swett advocates using let! over let in all or almost all cases
  # He has yet to see a case where let would be preferred
  let!(:message) do
    puts 'let block is running'
    'VALUE'
  end

  # We see (again) that our let "variable"/method is not invoked until we run our test
  # let(:message) do
  #   puts 'let block is running'
  #   'VALUE'
  # end

  it 'does stuff' do
    puts 'start of example'
    puts message
    puts 'end of example'
  end
end
