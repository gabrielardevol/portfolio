# t.string "title"
# t.string "description"
# t.string "images"
# t.string "hashtags"
# t.string "github_link"
# t.datetime "created_at", null: false
# t.datetime "updated_at", null: false


Project.create({
  title: "Els tres porquets",
  date: "Desembre 2022",
  description: "Són dos senzills videojocs basats en el conte dels tres porquets.
  El primer tracta de fugir del llop, i el segon de reparar la casa dels porquets abans de que el llop la tombi amb les seves bufades.
  Estàn pensats per a ser jugats en la consola de la terminal, i se serveixen dels emojis com a mínim element gràfic de la interfaç.
  Ambdós jocs estàn configurats amb ruby, seguint el patró MVC. Estàn escrits de manera en que facilment es poden modificar paràmetres:
  la distància a recórrer, la força del llop o la duració del joc.
  Per a jugar-los es requereix d’una consola que accepti emojis; jo he utilitzat la de Visual Studio Code.
  ".html_safe,
  images: "projects/pigs1.gif,projects/pigs2.gif",
  hashtags: "ruby, MVC",
  github_link: "https://github.com/gabrielardevol/els-tres-porquets"
  })
Project.create(
  {
  title: "Celler Ardèvol (website)",
  date: "Gener 2023",
  description: "Aquesta és la pàgina web per al Celler Ardèvol, petita empresa familiar.
  A més de la informàtica m’he ocupat dels continguts,  desenvolupant la pàgina desde zero de manera holística.
  És una pàgina empresarial amb una homepage (+ landing), apartat de about, un de producte i un de contacte.
  Està escrita amb ruby on rails, a més del frontend amb javascript, cru sense frameworks.
  He integrat la landing page en la propia homepage, en forma de carousel que desapareix amb l’scroll,
  buscant un resultat fluïd amb tendència minimalista.
  Pels diversos apartats he seguit amb una voluntat austera, utilitzant una graella molt versàtil.
  Durant els propers mesos procuraré enriquir el contingut i posar a prova altres propostes de disseny.
  ".html_safe,
  images: "projects/celler1.gif,projects/pigs1.gif",
  hashtags: "ruby on rails, Javascript, CSS, HTML",

  github_link: "https://github.com/gabrielardevol/celler-ardevol"
  }
  )

  Project.create(
    {
    title: "JS Lettering",
    date: "Gener - febrer 2023",
    description: "El meu portfoli en construcció
    ".html_safe,
    images: "projects/porfoli1.gif,projects/pigs1.gif",
    hashtags: "Javascript, CSS, HTML",

    github_link: "https://github.com/gabrielardevol/celler-ardevol"
    }
    )
