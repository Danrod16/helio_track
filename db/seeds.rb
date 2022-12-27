# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

puts "Destroying data"
    Company.destroy_all
    User.destroy_all
    Project.destroy_all
    Deliverable.destroy_all
    Journey.destroy_all
    Ticket.destroy_all
    Comment.destroy_all
    Step.destroy_all
    UserTask.destroy_all
    ProjectJourney.destroy_all

    puts "Creating companies"
    company1 = Company.create!(name: "Helio Digital Studio", industry: Company::INDUSTRIES.sample, website: "https://heliodigitalstudio.com", target: "Entrepreneurs")

    puts "Creating users"
    user1 = User.create!(email: "daniel@heliodigitalstudio.com", password: "123456", company: company1)

    puts "Creating clients"

    client1 = Client.create!(name: "Client 1", industry: Company::INDUSTRIES.sample, website: "https://client1.com", target: "Entrepreneurs", company: company1)

    puts "Creating projects"
    project1 = Project.create!(name: "Project 1", overview: "Project 1 overview", budget: 1000, status: "active", company: company1, client: client1)

    puts "Creating deliverables"
    deliverable1 = Deliverable.create!(name: "Deliverable 1", status: "active", project: project1)
    
    puts "Creating journeys"
    journey1 = Journey.create!(name: "Journey 1")
    
    puts "Creating steps"
    step1 = Step.create!(name: "Step 1", status: "active", journey: journey1)
    step2 = Step.create!(name: "Step 2", status: "active", journey: journey1)
    step3 = Step.create!(name: "Step 3", status: "active", journey: journey1)
    step4 = Step.create!(name: "Step 4", status: "active", journey: journey1)
    
    puts "Creating tickets"
    ticket1 = Ticket.create!(title: "Ticket 1", status: "active", deliverable: deliverable1, user: user1, step: step1)
    
    puts "Creating comments"
    comment1 = Comment.create!(description: "Comment 1", ticket: ticket1, user: user1)
    
    
    puts "Creating user tasks"
    user_task1 = UserTask.create!(user: user1, step: step1)

    puts "Creating project journeys"
    project_journey1 = ProjectJourney.create!(project: project1, journey: journey1)

    puts "Finished!"

