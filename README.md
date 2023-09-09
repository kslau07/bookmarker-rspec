Rails RSpec, FactoryBot, let variables
======================================

In this Rails project:
----------------------

rspec spec/let-variables/           # diff b/w let and let! (and @)
rspec spec/system/bookmark/             
rspec spec/support/factory_bot.rb

Note: we must now uncomment this line in rails_helper.rb:
 
    Dir[Rails.root.join('spec', 'support', '**', '*.rb')].sort.each { |f| require f }

Add factories/ inside spec/

assume we have a user, we will create spec/factories/users.rb


If our User has `first_name`, `last_name`, `email`, and `mobile_number`, then

our users factory will look something like this:

```ruby
FactoryBot.define do
  factory :user do
    first_name { 'John' }
    last_name { 'Doe' }
    email { john@email_provider.com }
    mobile_number { 8675309 }
  end
end
```

Rails and RSpec both recommend writing `request` specs and not `controller` specs.

Note that 'eq' and 'eql' seem similar, 'equal' and 'be' seem similar.
equal/be seem to be very strict.
