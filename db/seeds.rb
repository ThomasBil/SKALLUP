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

family = Family.create!(name: "Carrelage")
family2 = Family.create(name: "Parquet")
family3 = Family.create(name: "Stratifié")
family4 = Family.create(name: "Plancher")
family5 = Family.create(name: "Sol souple")
family6 = Family.create(name: "Revêtement extérieur")

puts "family done"
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

  file = URI.open('https://images.unsplash.com/photo-1452860606245-08befc0ff44b?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8NHx8ZGl5fGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=500&q=60')
  course.photo.attach(io: file, filename: 'nes.png', content_type: 'image/png')
  course.save!


puts "Course done"

nassim = User.create(email: "nassim@lewagon.fr", password: "azerty", username: "Nassim")
nabila = User.create(email: "nabila@lewagon.fr", password: "azerty", username: "Nabila")
thomas = User.create(email: "thomas@lewagon.fr", password: "azerty", username: "Thomas")
puts "User done"


Question.create(content: "Est-ce que pour poser du carrelage, il faut du carrelage ?", correct_answer: true, family: family)
Question.create(content: "Est-ce que pour poser du parquet, il faut du parquet ?", correct_answer: true, family: family)
Question.create(content: "Est-ce que pour peindre, il faut de la peinture ?", correct_answer: true, family: family)

Question.create(content: "Est-ce que pour poser du carrelage, il faut du carrelage ?", correct_answer: true, family: family2)
Question.create(content: "Est-ce que pour poser du parquet, il faut du parquet ?", correct_answer: true, family: family2)
Question.create(content: "Est-ce que pour peindre, il faut de la peinture ?", correct_answer: true, family: family2)

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
