# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require "open-uri"


puts "delete all seed"

Family.destroy_all
puts "Destroy familys"
Course.destroy_all
puts "Destroy courses"
User.destroy_all
puts "Destroy Users"
Question.destroy_all
puts "Destroy Questions"





puts "launch seed"


family2 = Family.new(name: "Parquet")

file = URI.open('https://images.unsplash.com/photo-1508920052992-6f5a921eba78?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1471&q=80')
family2.photo.attach(io: file, filename: 'parquet.png', content_type: 'image/png')
family2.save!
puts "family 2 done"

family = Family.new(name: "Carrelage")

file = URI.open('https://m1.lmcdn.fr/media/1/5ae4f1ce475ea7334dce9745/.jpg?width=750&height=750&format=jpg&quality=80&fit=bounds')
family.photo.attach(io: file, filename: 'carrelage.png', content_type: 'image/png')
family.save!
puts "family 1 done"



family3 = Family.new(name: "Stratifié")

file = URI.open('https://images.unsplash.com/photo-1594125674956-61a9b49c8ecc?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=687&q=80')
family3.photo.attach(io: file, filename: 'stratifie.png', content_type: 'image/png')
family3.save!
puts "family 3 done"

family4 = Family.new(name: "Plancher")

file = URI.open('https://www.ecohabitation.com/media/articles/images/cf/02/cf0275214177cf66b303fa504869ffb058b28a23/thumbs/b-NIJDP2XmC3_1200x500_Q9YtDUVi.jpg')
family4.photo.attach(io: file, filename: 'plancher.png', content_type: 'image/png')
family4.save!
puts "family 4 done"
family5 = Family.new(name: "Sol souple")

file = URI.open('https://blog.izi-by-edf.fr/2021/02/iStock-1272661345-1024x687.jpg')
family5.photo.attach(io: file, filename: 'lino.png', content_type: 'image/png')
family5.save!
puts "family 5 done"
family6 = Family.new(name: "Revêtement extérieur")

file = URI.open('https://permeasol.fr/wp-content/uploads/2019/06/orange-provencale.jpg')
family6.photo.attach(io: file, filename: 'exterieur.png', content_type: 'image/png')
family6.save!

puts "familys done"

course = Course.new(
  title: "Carrelage sol et mur",
  difficulty: "Difficile",
  duration: "90",
  content: "Comment se déroule ce cours ?""
    Notre animateur vous fait partager son expertise, pas à pas. Vous êtes totalement débutant en bricolage ? Ça tombe bien !
    Nous sommes là pour vous aider à dire : C’EST MOI QUI L’AI FAIT ! Venez apprendre comment poser du carrelage au sol avec un expert !
    A l'issue de ce cours, vous serez capable de choisir votre carrelage et le mortier colle adapté, préparer le sol avant la pose, découper, poser et coller vos carreaux de carrelage avant de faire les joints.",
family: family)

  file = URI.open('https://images.unsplash.com/photo-1614598632980-35ee54daa5b9?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8NXx8Zmxvb3IlMjB0aWxlfGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=500&q=60')


  course.photo.attach(io: file, filename: 'nes.png', content_type: 'image/png')
  course.save!



course = Course.new(
  title: "Plaquette de parement et brique de verre",
  difficulty: "Intermédiaire",
  duration: "45",
  content: "Comment se déroule ce cours ?
    Notre animateur vous fait partager son expertise, pas à pas. Vous êtes totalement débutant en bricolage ? Ça tombe bien !
    Nous sommes là pour vous aider à dire : C’EST MOI QUI L’AI FAIT ! Venez apprendre comment poser du carrelage au sol avec un expert !
    A l'issue de ce cours, vous serez capable de choisir votre carrelage et le mortier colle adapté, préparer le sol avant la pose, découper, poser et coller vos carreaux de carrelage avant de faire les joints."
  )
  family

  course.family = family

  file = URI.open('https://images.unsplash.com/photo-1611506420749-9cbb8e5a1057?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=764&q=80')

  course.photo.attach(io: file, filename: 'nes.png', content_type: 'image/png')
  p course.save!


course = Course.new(
  title: "Parquet et plancher",
  difficulty: "Intermédiaire",
  duration: "60",
  content: "Comment se déroule ce cours ?
    Notre animateur vous fait partager son expertise, pas à pas. Vous êtes totalement débutant en bricolage ? Ça tombe bien !
    Nous sommes là pour vous aider à dire : C’EST MOI QUI L’AI FAIT ! Venez apprendre comment poser du carrelage au sol avec un expert !
    A l'issue de ce cours, vous serez capable de choisir votre carrelage et le mortier colle adapté, préparer le sol avant la pose, découper, poser et coller vos carreaux de carrelage avant de faire les joints.",
family: family2)

  file = URI.open('https://images.unsplash.com/photo-1585128792020-803d29415281?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=687&q=80')
  course.photo.attach(io: file, filename: 'nes.png', content_type: 'image/png')
  course.save!


  course = Course.new(
  title: "Terrasse et sol extérieur",
  difficulty: "Débutant",
  duration: "30",
  content: "Comment se déroule ce cours ?
    Notre animateur vous fait partager son expertise, pas à pas. Vous êtes totalement débutant en bricolage ? Ça tombe bien !
    Nous sommes là pour vous aider à dire : C’EST MOI QUI L’AI FAIT ! Venez apprendre comment poser du carrelage au sol avec un expert !
    A l'issue de ce cours, vous serez capable de choisir votre carrelage et le mortier colle adapté, préparer le sol avant la pose, découper, poser et coller vos carreaux de carrelage avant de faire les joints.",
family: family3)

  file = URI.open('https://images.unsplash.com/photo-1617850687395-620757feb1f3?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8NXx8dGVycmFjZXxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=500&q=60')
  course.photo.attach(io: file, filename: 'nes.png', content_type: 'image/png')
  course.save!

  course = Course.new(
  title: "Sol stratifié",
  difficulty: "Débutant",
  duration: "30",
  content: "Comment se déroule ce cours ?
    Notre animateur vous fait partager son expertise, pas à pas. Vous êtes totalement débutant en bricolage ? Ça tombe bien !
    Nous sommes là pour vous aider à dire : C’EST MOI QUI L’AI FAIT ! Venez apprendre comment poser du carrelage au sol avec un expert !
    A l'issue de ce cours, vous serez capable de choisir votre carrelage et le mortier colle adapté, préparer le sol avant la pose, découper, poser et coller vos carreaux de carrelage avant de faire les joints.",
family: family4)

  file = URI.open('https://images.unsplash.com/photo-1575204015311-0fe377370780?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8bGFtaW5hdGV8ZW58MHx8MHx8&auto=format&fit=crop&w=500&q=60')
  course.photo.attach(io: file, filename: 'nes.png', content_type: 'image/png')
  course.save!



  course = Course.new(
  title:"Lame, dalle et sol PVC",
  difficulty: "Débutant",
  duration: "30",
  content:"Comment se déroule ce cours ?
    Notre animateur vous fait partager son expertise, pas à pas. Vous êtes totalement débutant en bricolage ? Ça tombe bien !
    Nous sommes là pour vous aider à dire : C’EST MOI QUI L’AI FAIT ! Venez apprendre comment poser du carrelage au sol avec un expert !
    A l'issue de ce cours, vous serez capable de choisir votre carrelage et le mortier colle adapté, préparer le sol avant la pose, découper, poser et coller vos carreaux de carrelage avant de faire les joints.",
family: family5)

  file = URI.open('https://images.unsplash.com/photo-1608613304899-ea8098577e38?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8M3x8cHZjJTIwY2FycGVudHJ5fGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=500&q=60')
  course.photo.attach(io: file, filename: 'nes.png', content_type: 'image/png')
  course.save!



  course = Course.new(
  title:"Quel revêtement conseiller, carrelage ou parquet ?",
  difficulty: "Débutant",
  duration: "30",
  content:"un cours",
  family: family6)

  file = URI.open('https://frizbizovh.s3.amazonaws.com/system/ckeditor/pictures/data/000/000/130/content/pose_de_carrelage_sur_parquet.jpg')
  course.photo.attach(io: file, filename: 'nes.png', content_type: 'image/png')
  course.save!


puts "Course done"

nassim = User.create(email: "nassim@lewagon.fr", password: "azerty", username: "Nassim")
nabila = User.create(email: "nabila@lewagon.fr", password: "azerty", username: "Nabila")
thomas = User.create(email: "thomas@lewagon.fr", password: "azerty", username: "Thomas")
puts "User done"


Question.create(content: "Le carrelage est il un revêtement de sol robuste ?", correct_answer: true, family: family)
Question.create(content: "Le sol stratifié est un revêtement de sol composé d'un support de fibres de bois et d'un décor imprimé ?", correct_answer: true, family: family)
Question.create(content: "La simplicité de pose du sol PVC le rend accessible aux bricoleurs débutants ?", correct_answer: true, family: family)
Question.create(content: "Les dalles et lames adhésives se posent sur un sol lisse ?", correct_answer: true, family: family)
Question.create(content: "Les dalles et lames à clipser sont prévues pour les sols irréguliers ?", correct_answer: true, family: family)
Question.create(content: "Les dalles et lames autoplombantes peuvent se poser directement sur un carrelage ?", correct_answer: true, family: family)

Question.create(content: "Est-ce qu'un parquet à lame large permet-il d'agrandir la pièce ?", correct_answer: true, family: family2)
Question.create(content: "Le parquet vitrifié a t-il un aspect brillant ?", correct_answer: true, family: family2)
Question.create(content: "Le parquet ciré est il plus dur d'entretien a t-il un aspect brillant ?", correct_answer: true, family: family2)
Question.create(content: "Les parquets destinés aux habitations sont classés sur 3 niveaux ?", correct_answer: true, family: family2)
Question.create(content: "Les essences de bois adaptées pour la salle de bain sont le chêne, le teck, le robinier et les bois thermotraités ?", correct_answer: true, family: family2)
Question.create(content: "Le parquet est compatible avec un sol chauffant, ou même chauffant-rafraîchissant ? ", correct_answer: true, family: family2)
Question.create(content: "Si votre support est un ancien carrelage, faut-il choisir un parquet de faible épaisseur (12 ou 14 mm)", correct_answer: true, family: family2)


Question.create(content: "Est-ce que pour poser du carrelage, il faut du carrelage ?", correct_answer: true, family: family3)
Question.create(content: "Est-ce que pour poser du parquet, il faut du parquet ?", correct_answer: true, family: family3)
Question.create(content: "Est-ce que pour peindre, il faut de la peinture ?", correct_answer: true, family: family3)

Question.create(content: "Est-ce que pour poser du carrelage, il faut du carrelage ?", correct_answer: true, family: family4)
Question.create(content: "Est-ce que pour poser du parquet, il faut du parquet ?", correct_answer: true, family: family4)
Question.create(content: "Est-ce que pour peindre, il faut de la peinture ?", correct_answer: true, family: family4)

Question.create(content: "Est-ce que pour poser du carrelage, il faut du carrelage ?", correct_answer: true, family: family5)
Question.create(content: "Est-ce que pour poser du parquet, il faut du parquet ?", correct_answer: true, family: family5)
Question.create(content: "Est-ce que pour peindre, il faut de la peinture ?", correct_answer: true, family: family5)

Question.create(content: "Est-ce que pour poser du carrelage, il faut du carrelage ?", correct_answer: true, family: family6)
Question.create(content: "Est-ce que pour poser du parquet, il faut du parquet ?", correct_answer: true, family: family6)
Question.create(content: "Est-ce que pour peindre, il faut de la peinture ?", correct_answer: true, family: family6)

puts "Questions done"
puts "Seed done"
