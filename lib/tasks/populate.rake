require 'faker'

namespace :db do
  task :populate => :environment do
    # teams = 8.times.collect{ |n| Team.create! }
    # teams.shuffle.each do |t|
    #   r = t.retros.build({
    #                     :date => (Date.today + rand(8)),
    #                     :name => (Faker::Company.catch_phrase),
    #                     :state => (Faker::Company.bs),
    #                     :voting_allowed => false
    #                 })
    #   r.save
    # end
    # Retro.all.each do |r|
    #   15.times do
    #     rem = r.remarks.build({
    #                     :connotation_id => rand(1..3),
    #                     :title => Faker::Address.city,
    #                     :explanation => Faker::Company.bs
    #                   })
    #     rem.save
    #   end
    # end
  end
end