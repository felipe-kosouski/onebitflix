## Customize de acordo com os videos e thumbnails de exemplo que você subir para o seu servidor

# Categories
live = Category.create(name: 'Live')
talks = Category.create(name: 'Talks')
testes = Category.create(name: 'Testes')
album = Category.create(name: 'Album')

# Featured Movie
movie1 = Movie.create(title: "Slug Killer - Laid to Rest cover", description: "Slug Killer tocando a musica Laid to Rest...", thumbnail_key: "live2.png", thumbnail_cover_key: "live2-cover.png", video_key: "live2.mp4", highlighted: true, category: live, featured_thumbnail_key: "live2.png")

# Users
user1 = User.create(name: 'example', email: 'example@example.com', password: '123456', password_confirmation: '123456')
user2 = User.create(name: 'example2', email: 'example2@example.com', password: '123456', password_confirmation: '123456')
user3 = User.create(name: 'example3', email: 'example3@example.com', password: '123456', password_confirmation: '123456')
user4 = User.create(name: 'example4', email: 'example4@example.com', password: '123456', password_confirmation: '123456')
user5 = User.create(name: 'example5', email: 'example5@example.com', password: '123456', password_confirmation: '123456')

# Movies sem série
movie2 = Movie.create(title: "Slug Killer - Killed by Thrash", description: "Música Killed by Thrash da banda Slug Killer", thumbnail_key: "slug1.png", thumbnail_cover_key: "slug1-cover.png", video_key: "slug1.mp4", category: album)
movie3 = Movie.create(title: "Slug Killer - Oblivion", description: "Música Oblivion da banda Slug Killer", thumbnail_key: "slug2.png", thumbnail_cover_key: "slug2-cover.png", video_key: "slug2.mp4", category: album)
movie4 = Movie.create(title: "Slug Killer - Only", description: "Música Only da banda Slug Killer", thumbnail_key: "slug3.png", thumbnail_cover_key: "slug3-cover.png", video_key: "slug3.mp4", category: album)
movie5 = Movie.create(title: "Slug Killer - The Void", description: "Música The Void da banda Slug Killer", thumbnail_key: "slug4.png", thumbnail_cover_key: "slug4-cover.png", video_key: "slug4.mp4", category: album)

# Series
live_videos = Serie.create(title: 'Live Videos Slug Killer', description: 'Uma série completa de videos ao vivo da banda Slug Killer', thumbnail_key: "live1.png", thumbnail_cover_key: "live1-cover.png", category: live)
movie10 = Movie.create(title: "Slug Killer - Killed By Thrash Live", description: "Video ao vivo da banda Slug Killer no Guarapuava Rock City tocando Killed By Thrash", thumbnail_key: "live1.png", thumbnail_cover_key: "live1-cover.png", video_key: "live1.mp4", serie: live_videos, episode_number: 1)
movie11 = Movie.create(title: "Slug Killer - Laid to Rest", description: "Video ao vivo da banda Slug Killer no Serv Car tocando Laid to Rest da banda Lamb of God", thumbnail_key: "live2.png", thumbnail_cover_key: "live2-cover.png", video_key: "live2.mp4", serie: live_videos, episode_number: 2)
movie12 = Movie.create(title: "Slug Killer - Arise", description: "Video ao vivo da banda Slug Killer na praça da prefeitura tocando Arise da banda Sepultura", thumbnail_key: "live3.png", thumbnail_cover_key: "live3-cover.png", video_key: "live3.mp4", serie: live_videos, episode_number: 3)

# Keep Wathching
Player.create(start_date: Time.now, user: user1, elapsed_time: 10, movie: movie1)
Player.create(start_date: Time.now, user: user1, elapsed_time: 20, movie: movie2)
Player.create(start_date: Time.now, user: user1, elapsed_time: 30, movie: movie3)
Player.create(start_date: Time.now, user: user1, elapsed_time: 40, movie: movie4)
Player.create(start_date: Time.now, user: user1, elapsed_time: 50, movie: movie5)

# Reviews
Review.create(rating: 3, description: 'I have always depended on the kindness of strangers.', reviewable: movie2, user: user1)
Review.create(rating: 2, description: 'Help me, Obi-Wan Kenobi. Youre my only hope.         ', reviewable:movie2, user: user2)
Review.create(rating: 5, description: 'Every time a bell rings, an angel gets his wings.    ', reviewable:movie2, user: user3)
Review.create(rating: 3, description: 'Magic Mirror on the wall, who is the fairest one of all?', reviewable: movie2, user: user4)
Review.create(rating: 5, description: 'Just when I thought I was out, they pull me back in.', reviewable: movie2, user: user5)


# Favorites
Favorite.create(favoritable: Movie.all[0], user: user1)
Favorite.create(favoritable: Movie.all[1], user: user1)
Favorite.create(favoritable: Movie.all[2], user: user1)
Favorite.create(favoritable: Movie.all[3], user: user1)
Favorite.create(favoritable: Movie.all[4], user: user1)