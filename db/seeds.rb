# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts "delete all seed"

Family.destroy_all
puts "Destroy family"
Course.destroy_all
puts "Destroy course"




puts "launch seed"
family = Family.create(name: "Carrelage")
family2 = Family.create(name: "Parquet, Stratifié et plancher")
puts "family done"
Course.create(
  title:"Carrelage sol et mur",
  difficulty: "hard",
  duration: "90",
  content:"Comment se déroule ce cours ?
    Notre animateur vous fait partager son expertise, pas à pas. Vous êtes totalement débutant en bricolage ? Ça tombe bien !
    Nous sommes là pour vous aider à dire : C’EST MOI QUI L’AI FAIT ! Venez apprendre comment poser du carrelage au sol avec un expert !
    A l'issue de ce cours, vous serez capable de choisir votre carrelage et le mortier colle adapté, préparer le sol avant la pose, découper, poser et coller vos carreaux de carrelage avant de faire les joints.",
family: family)
Course.create(
  title:"Plaquette de parement et brique de verre",
  difficulty: "medium",
  duration: "45",
  content:"Comment se déroule ce cours ?
    Notre animateur vous fait partager son expertise, pas à pas. Vous êtes totalement débutant en bricolage ? Ça tombe bien !
    Nous sommes là pour vous aider à dire : C’EST MOI QUI L’AI FAIT ! Venez apprendre comment poser du carrelage au sol avec un expert !
    A l'issue de ce cours, vous serez capable de choisir votre carrelage et le mortier colle adapté, préparer le sol avant la pose, découper, poser et coller vos carreaux de carrelage avant de faire les joints.",
family: family)
Course.create(
  title:"Terrase et sol extérieur",
  difficulty: "easy",
  duration: "25",
  content:"Comment se déroule ce cours ?
    Notre animateur vous fait partager son expertise, pas à pas. Vous êtes totalement débutant en bricolage ? Ça tombe bien !
    Nous sommes là pour vous aider à dire : C’EST MOI QUI L’AI FAIT ! Venez apprendre comment poser du carrelage au sol avec un expert !
    A l'issue de ce cours, vous serez capable de choisir votre carrelage et le mortier colle adapté, préparer le sol avant la pose, découper, poser et coller vos carreaux de carrelage avant de faire les joints.",
family: family)


Course.create(
  title:"Parquet et plancher",
  difficulty: "medium",
  duration: "60",
  content:"Comment se déroule ce cours ?
    Notre animateur vous fait partager son expertise, pas à pas. Vous êtes totalement débutant en bricolage ? Ça tombe bien !
    Nous sommes là pour vous aider à dire : C’EST MOI QUI L’AI FAIT ! Venez apprendre comment poser du carrelage au sol avec un expert !
    A l'issue de ce cours, vous serez capable de choisir votre carrelage et le mortier colle adapté, préparer le sol avant la pose, découper, poser et coller vos carreaux de carrelage avant de faire les joints.",
family: family2)
puts "Course done"
