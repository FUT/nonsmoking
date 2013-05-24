require 'database_cleaner'

DatabaseCleaner.strategy = :truncation
DatabaseCleaner.clean

User.create email: 'user@example.com', password: 'secret12'
User.create email: 'user1@example.com', password: 'secret12'
User.create email: 'user2@example.com', password: 'secret12'
User.create email: 'user3@example.com', password: 'secret12'
User.create email: 'admin@example.com', password: 'secret12' do |u|
  u.admin = true
end

NewsItem.create title: 'asdfasdfasdfsa', body: 'asdfasdaf asdf asdf asdf as'
NewsItem.create title: 'asdfasdfasdfsa' * 2, body: 'asdfasdaf asdf asdf asdf as' * 2
NewsItem.create title: 'asdfasdfasdfsa' * 3, body: 'asdfasdaf asdf asdf asdf as' * 40
