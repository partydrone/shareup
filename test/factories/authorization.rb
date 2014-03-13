Factory.define :authorization do |a|
  a.provider 'provider'
  a.uid 'uid'
  a.user_id { Factory(:user).id }
  a.token 'token'
  a.secret 'secret'
  a.name 'Barney Rubble'
  a.url 'http://example.com'
end
