# db/seeds.rb
if ActiveRecord::Base.connection.table_exists? 'articles'
  Article.where(name: 'Abby', weight: 2).first_or_create
  Article.where(name: 'Bob', weight: 1).first_or_create
  Article.where(name: "Abby", weight: 3).first_or_create
  Article.where(name: "Abby", weight: 4).first_or_create
  Article.where(name: "Abby", weight: 5).first_or_create
  Article.where(name: "Abby", weight: 6).first_or_create
  Article.where(name: 'Bob', weight: 3).first_or_create
  Article.where(name: "Abby", weight: 3).first_or_create
  Article.where(name: 'Bob', weight: 5).first_or_create
  Article.where(name: 'Bob', weight: 7).first_or_create
end