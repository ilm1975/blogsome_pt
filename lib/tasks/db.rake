namespace :db do
 desc "gives user params"
 task populate: :environment do
   BlogPost.destroy_all
   200.times do
     BlogPost.create!(
     title: Faker::Hipster.sentence(3, true),
     author: Faker::StarWars.character(Anakin Skywalker),
     blog_entry: Faker::Hipster.paragraph(15)
     )
    end
  end
end


