puts 'creating admin'
@admin = Admin.create(:name => "Setup", :email => "setup@example.com", 
:password => 'setuppassword'
)
if @admin.save!
  puts "#{@admin.name} was created"
else
  puts "#{@admin.name} Was not created."
end

