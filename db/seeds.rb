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
@survey = @trip.survey
if @survey
  puts "#{@survey.name} was created"
else
  @survey = Survey.new(:name => "Sample survey", :date => (@trip.date), :trip_id => (@trip.id))
  if @survey.save!
    puts "#{@survey.name} was created"
  else
    puts "#{@survey.name} was not created"
  end
end

if @trip.particeipant.size == 0
  @particeipant = @trip.particeipant.new(:email => 'Test@test.com', :first_name => "Setup", :last_name => "Test")
  if @particeipant.save!
    puts "#{@particeipant.first_name} was created"
  else
    puts "#{@particeipant.first_name} was not created"
  end
end

if @survey.question.all.size >= 3
  puts "Questions setup complete"
else
(1..3).each do |n|
    @question = Question.new(:question => "What is the answer to question #{n} ?",
    :survey_id => (@survey.id), :q_n => (n))
    @answer = Answer.new(:answer => "This is my answer for question #{n}", :particeipant_id => (@particeipant.id),
    :q_n_id =>(@question.q_n) )
    if @question.save!
      puts "Question #{n} was created"
    else
      puts "Question #{n} was not created"
    end
    if @answer.save!
      puts "Answer #{n} was created"
    else
      puts "Answer #{n} was not created"
    end
  end
end
