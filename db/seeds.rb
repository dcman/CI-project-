@admin = Admin.find_by_email("setup@example.com")
if @admin
  puts "Admin setup complete"
else
  puts 'Seting up admin'
  @admin = Admin.create(:name => "Setup", :email => "setup@example.com",
:password => 'setuppassword'
  )
  if @admin.save!
    puts "#{@admin.name} was created"
  else
    puts "#{@admin.name} Was not created."
  end
end

@trip = Trip.find_by_name("Setup")
if @trip
  puts "Trips setup complete"
else
  puts 'Seting up trip'
  @trip = Trip.new(:name => "Setup", :date => "12/30/2000",
  :description => "This is what a trip should look like", :sum =>"1236549870")

  if @trip.save!
    puts "#{@trip.name} was created"
  else
    puts "#{@trip.name} was not created"
  end
end
