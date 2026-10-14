#import "@preview/touying:0.7.3": *
#import themes.university: *

#let pyl(pathy) = read(pathy).split("\n\n")
#let pyp(py, start, end) = raw(py.slice(start, end).join("\n\n"), block: true, lang: "python")

#show: university-theme.with(
  //aspect-ratio: "16-9",
  config-info(
    title: [Into the Matrix],
    subtitle: [Exploration of Molecular Symmetry and Bonding Using Jupyter Notebooks],
    author: [David A. Ramirez],
    //date: datetime.today(),
    institution: [The Catholic University of America],
    //contact: ["ramirezda@cua.edu"],
    //logo: emoji.school,
  ),
  config-colors(
    primary: color.hsl(17deg, 90%, 15%), // rgb("#04364A"),
    secondary: color.hsl(15deg, 71%, 31%), // rgb("#176B87"),
    tertiary: color.hsl(7deg, 37%, 43%), // rgb("#448C95"),
    neutral-lightest: rgb("#ffffff"),
    neutral-darkest: rgb("#000000"),
  ),
  //register(
    header-right: none
  //)
)

#set text(
  size: 30pt
)

#title-slide()

== Trial 1
#let water = pyl("./py/water.py")
#pyp(water, 0, 2)

#pagebreak()
#pyp(water, 2, 4)

#pagebreak()
#pyp(water, 4, 6)

== Trial 2
#let nb = json("./Untitled.ipynb")
#raw(
nb.cells.at(0).source.join("")
, lang: "python")

#raw(
nb.cells.at(0).outputs.at(0).text.join("").replace("=", " = ").replace("(", "(\n      ")
, lang: "python")
