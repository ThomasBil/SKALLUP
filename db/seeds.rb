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
family = Family.create(name: "Carrelage")
family2 = Family.create(name: "Parquet, Stratifié et plancher")
puts "family done"
course = Course.new(
  title:"Carrelage sol et mur",
  difficulty: "Difficile",
  duration: "90",
  content:"Comment se déroule ce cours ?
    Notre animateur vous fait partager son expertise, pas à pas. Vous êtes totalement débutant en bricolage ? Ça tombe bien !
    Nous sommes là pour vous aider à dire : C’EST MOI QUI L’AI FAIT ! Venez apprendre comment poser du carrelage au sol avec un expert !
    A l'issue de ce cours, vous serez capable de choisir votre carrelage et le mortier colle adapté, préparer le sol avant la pose, découper, poser et coller vos carreaux de carrelage avant de faire les joints.",
family: family)

  file = URI.open('https://upload.wikimedia.org/wikipedia/commons/thumb/8/82/NES-Console-Set.jpg/1200px-NES-Console-Set.jpg')
  course.photo.attach(io: file, filename: 'nes.png', content_type: 'image/png')
  course.save!


course = Course.new(
  title:"Plaquette de parement et brique de verre",
  difficulty: "Intermédiaire",
  duration: "45",
  content:"Comment se déroule ce cours ?
    Notre animateur vous fait partager son expertise, pas à pas. Vous êtes totalement débutant en bricolage ? Ça tombe bien !
    Nous sommes là pour vous aider à dire : C’EST MOI QUI L’AI FAIT ! Venez apprendre comment poser du carrelage au sol avec un expert !
    A l'issue de ce cours, vous serez capable de choisir votre carrelage et le mortier colle adapté, préparer le sol avant la pose, découper, poser et coller vos carreaux de carrelage avant de faire les joints.",
family: family)

  file = URI.open('https://upload.wikimedia.org/wikipedia/commons/thumb/8/82/NES-Console-Set.jpg/1200px-NES-Console-Set.jpg')
  course.photo.attach(io: file, filename: 'nes.png', content_type: 'image/png')
  course.save!


course = Course.new(
  title:"Terrase et sol extérieur",
  difficulty: "Débutant",
  duration: "30",
  content:"Comment se déroule ce cours ?
    Notre animateur vous fait partager son expertise, pas à pas. Vous êtes totalement débutant en bricolage ? Ça tombe bien !
    Nous sommes là pour vous aider à dire : C’EST MOI QUI L’AI FAIT ! Venez apprendre comment poser du carrelage au sol avec un expert !
    A l'issue de ce cours, vous serez capable de choisir votre carrelage et le mortier colle adapté, préparer le sol avant la pose, découper, poser et coller vos carreaux de carrelage avant de faire les joints.",
family: family)

  file = URI.open('https://upload.wikimedia.org/wikipedia/commons/thumb/8/82/NES-Console-Set.jpg/1200px-NES-Console-Set.jpg')
  course.photo.attach(io: file, filename: 'nes.png', content_type: 'image/png')
  course.save!



course = Course.new(
  title:"Parquet et plancher",
  difficulty: "Intermédiaire",
  duration: "60",
  content:"Comment se déroule ce cours ?
    Notre animateur vous fait partager son expertise, pas à pas. Vous êtes totalement débutant en bricolage ? Ça tombe bien !
    Nous sommes là pour vous aider à dire : C’EST MOI QUI L’AI FAIT ! Venez apprendre comment poser du carrelage au sol avec un expert !
    A l'issue de ce cours, vous serez capable de choisir votre carrelage et le mortier colle adapté, préparer le sol avant la pose, découper, poser et coller vos carreaux de carrelage avant de faire les joints.",
family: family2)

  file = URI.open('https://upload.wikimedia.org/wikipedia/commons/thumb/8/82/NES-Console-Set.jpg/1200px-NES-Console-Set.jpg')
  course.photo.attach(io: file, filename: 'nes.png', content_type: 'image/png')
  course.save!

puts "Course done"

nassim = User.create(email: "nassim@lewagon.fr", password: "azerty", username: "NassimCastor")
nabila = User.create(email: "nabila@lewagon.fr", password: "azerty", username: "NabilaPasCastor")
thomas = User.create(email: "thomas@lewagon.fr", password: "azerty", username: "ThomasPasCastor")
puts "User done"


Question.create(content:"Est-ce que pour poser du carrelage, il faut du carrelage ?", correct_answer: true, family: family)
Question.create(content:"Est-ce que pour poser du parquet, il faut du parquet ?", correct_answer: true, family: family)
Question.create(content:"Est-ce que pour peindre, il faut de la peinture ?", correct_answer: true, family: family)
Question.create(content:"Est-ce que pour peindre, il faut de la peintuuuuuuure ?", correct_answer: true, family: family2)

puts "Questions done"
puts "Seed done"
