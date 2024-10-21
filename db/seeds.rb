# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
user = User.create!(email: 'dayanna@gmail.com', password: '123456', name: 'Dayanna')
fotografia = Picture.create(name: "Primera Imagen", content: "La primera imagen de prueba", user: usuario_nuevo)

profile_image_path = Rails.root.join('db', 'seeds', '../../../profile_user.png')
user.profile_image.attach(io: File.open(profile_image_path), filename: 'profile_user.png', content_type: 'image/jpeg')

picture1 = Picture.create!(name: 'Sunset', content: 'Beautiful sunset over the hills', user: user)
pictupicture1_image_path = Rails.root.join('db', 'seeds', '../../../picture1.jpg')

picture1.image.attach(io: File.open(picture1_image_path), filename: 'picture1.jpg', content_type: 'image/jpeg')

picture2_image_path = Rails.root.join('db', 'seeds', '../../../picture2.png')
picture2.image.attach(io: File.open(picture2_image_path), filename: 'picture2.png', content_type: 'image/jpeg')

Comment.create!(content: 'Amazing picture!', user: user, picture: picture1)
Comment.create!(content: 'Looks so peaceful!', user: user, picture: picture2)




