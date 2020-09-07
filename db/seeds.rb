# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Company.create(name: 'Flopy Shoes');
User.create(firstname: 'cristian',
            lastname: 'carrasco',
            role: 0,
            email: 'cris@example.com',
            password: '123456',
            company_id: 1);

Category.create(name: "Smartphones", company_id: 1)
Category.create(name: "Shoes" , company_id: 1)
Category.create(name: "Accesories", company_id: 1)

iPhone = Product.create(name: "iPhone XS", description: "Super retina screen", stock: 10,  sku: "AIX0120", company_id: 1 )
iPhone.prices << Price.create(salesprice: 150000, pricecost: 100000)
iPhone.categories << Category.first
iPhone.image.attach(io: File.open("app/assets/images/products/iphone_8.jpg"), filename: "iphone_8.jpg")

# Dir[File.join(Rails.root, 'db', 'seeds', '*.rb')].sort.each { |seed| load seed }
