Factory.define :share do |s|
  s.from_user_id { Factory(:user).id }
  s.to_user_id { Factory(:user, name: 'Fred Flintstone', email: 'fflintstone@example.com').id }
  s.to_email 'brubble@example.com'
  s.url 'http://example.com'
  s.created_at '2014-03-12 22:46:36'
end
