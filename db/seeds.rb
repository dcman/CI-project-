# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ :name => 'Chicago' }, { :name => 'Copenhagen' }])
#   Mayor.create(:name => 'Daley', :city => cities.first)
hash = [:name => "Justin", :email => "srwaxalot@gmail.com", 
  :encrypted_password => "97b28a8f516d21ce0524c8536bfcf2d3b9ddc7269c677c8e789677bf9c918cfd"
  :salt => "615c00fcf2e5b720243883a711e2026fb23b5de8f1343adaf4b1e9a05dac1f75"]
puts 'creating admin'
admin = Admin.create(hash)
if admin.save
  puts 'saved'
else 
  pust 'faild'
end