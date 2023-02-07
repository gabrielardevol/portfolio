# t.string "title"
# t.string "description"
# t.string "images"
# t.string "hashtags"
# t.string "github_link"
# t.datetime "created_at", null: false
# t.datetime "updated_at", null: false


Project.create({
  title: "Three pigs and the wolf",
  date: "Desembre 2022",
  description: "These are two simple video games based on the story of the three pigs.
  The first is about escaping from the wolf, and the second is about repairing the pigs
  house before the wolf blows it down.
  They are designed to be played on the terminal console and use emojis as the minimum graphic element of the interface.
  Both games are configured in ruby, following the MVC pattern.
  They are written in a way that parameters can be easily modified:
  the distance to travel, the strength of the wolf, or the duration of the game.
  To play them, you need a console that accepts emojis; I used the Visual Studio Code console.
  ".html_safe,
  images: "projects/pigs1.gif,projects/pigs2.gif",
  hashtags: "ruby, MVC",
  github_link: "https://github.com/gabrielardevol/els-tres-porquets",
  html_content: "".html_safe,
  website_url: "",

  })
Project.create(
  {
  title: "Celler Ardèvol (website)",
  date: "Gener 2023",
  description: "This is the website for Celler Ardèvol, a small family business.
  In addition to computer science, I was also in charge of the content,
  developing the website from scratch in a holistic manner.
  It is a business website with a homepage (+ landing), an about section, a product section, and a contact section.
  It is written in ruby on rails and the frontend is in javascript, plain without frameworks.
  I integrated the landing page into the homepage in the form of a carousel that disappears with scrolling,
  aiming for a fluid minimalist result. For the various sections, I followed an austere approach,
  using a very versatile grid. In the coming months, I will try to enrich the content and test other design proposals.
  ".html_safe,
  images: "projects/celler1.gif",
  hashtags: "ruby on rails, Javascript, CSS, HTML",

  github_link: "https://github.com/gabrielardevol/celler-ardevol",
  html_content: "".html_safe,
  website_url: "https://cellerardevol.herokuapp.com/",
  }
  )



  Project.create(
    {
    title: "JS Lettering",
    date: "Gener - febrer 2023",
    description: "To give my website a more unique appearance,
    I thought of a colorful design that expresses my creative spirit.
    I wanted an element that conveyed my background in the arts,
    as well as my passion for animation.
    Making this vision a reality was quite a challenge,
    as my experience with Javascript was almost none.
    Although the result could still be smoother,
    I am satisfied with how it gives my portfolio a more relaxed look.
    ".html_safe,
    images: "projects/porfoli1.gif",
    hashtags: "Javascript, CSS, hardcode",

    github_link: "",
    html_content: "
    <div id='container' style='width: fit-content; margin: 10em auto'></div>
    <script>
    var string = 'This is my lettering'
    var columns = 22

    </script>
    <script src='/assets/lettering.js'>
    </script>
    ".html_safe,
    website_url: "",

    }
    )
