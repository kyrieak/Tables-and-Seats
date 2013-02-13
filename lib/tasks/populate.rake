require 'faker'

namespace :db do
  task :populate => :environment do
    teams = 8.times.collect{ |n| Team.create! }
    teams.shuffle.each do |t|
      r = t.retros.build({
                        :date => (Date.today + rand(8)),
                        :name => (Faker::Company.catch_phrase),
                        :state => (Faker::Company.bs),
                        :voting_allowed => false
                    })
      r.save
    end
  end
end