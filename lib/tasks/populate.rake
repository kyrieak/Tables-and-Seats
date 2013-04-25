namespace :db do
  namespace :user_test do

    task :setup => :environment do
      Table.create({ :name => "User Test Table" })

      User.create({ :email => "subject_a@usertest.com",
                    :password => "password_a" })

      User.create({ :email => "subject_b@usertest.com",
                    :password => "password_b" })

      User.create({ :email => "subject_c@usertest.com",
                    :password => "password_c" })

    end

    # atm only deletes the seats added by the test user
    task :cleanup => :environment do

      users = [
                User.find({ :email => "subject_a@usertest.com" }),
                User.find({ :email => "subject_b@usertest.com" }),
                User.find({ :email => "subject_c@usertest.com" })
              ]

      users.each do |user|
        seats = Seat.find({ :user_id => user.id })
        seats.each(&:destroy)
      end

    end

  end
end