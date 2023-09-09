# spec/support/factory_bot.rb

# Uncomment the following line:
# Dir[Rails.root.join('spec', 'support', '**', '*.rb')].sort.each { |f| require f }
#
# Then add this code to enable the autoloading of the support directory

RSpec.configure do |config|
  config.include FactoryBot::Syntax::Methods
end
