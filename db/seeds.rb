require 'database_cleaner'

DatabaseCleaner.strategy = :truncation
DatabaseCleaner.clean

User.create email: 'user@example.com', password: 'secret12'
User.create email: 'admin@example.com', password: 'secret12' do |u|
  u.admin = true
end
