#import "@preview/touying:0.7.3": *
#import themes.university: *
#import "@preview/fletcher:0.5.8" as fletcher: node, edge
#import "@preview/typsium:0.3.1":*
#import emoji: checkmark, crossmark

#let fletcher-diagram = touying-reducer.with(reduce: fletcher.diagram, cover: fletcher.hide)

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
  size: 32pt
)

#title-slide()

== Context

- The Catholic University of America
  - 3,200 undergrads
  - 2,000 grads
  - Recently designated R1

- Chemistry @ CUA
  - (Bio)Chemistry major/minor
  - \~8 graduates/year

== Outcomes

- By the end of this module, you will be able to:
  - use py3Dmol to represent molecules in 3D space. 
  - represent symmetry operations in Cartesian coordinates as matrix multiplications. 
  - enumerate the combinations of symmetry operators to form a point group and build a character table. 
  - apply the character tables to the creation of molecular orbital (MO) diagrams. 

== Breakdown

#[
  #set text(size: 22pt)
  #let anedge = edge.with(
    label-angle: auto,
  )
  #fletcher-diagram(
    node-stroke: .1em,
    node-fill: gradient.radial(red.lighten(80%), red, center: (30%, 20%), radius: 80%),
    spacing: 4em,
    node((0, 0), `note-book 0`, radius: 2em),
    pause,
    node((1, 0), `sym. oper.`, radius: 2em),
    pause,
    node((2, 0), `pt. grp.`, radius: 2em),
    pause,
    node((3, 0), `mo diag.`, radius: 2em, extrude: (-2.5, 0)),
  )
]

== Sample

```python
import numpy as np

water = np.array([
  ['atom', 'x',  'y',  'z'],
  ['O',     0,    0,     0],
  ['H',     0,    1,     1],
  ['H',     0,   -1,    -1],
])
```

== Sample cont...

```python
rot_mat = np.array([
    [1,  0,  0],
    [0,  0,  1],
    [0, -1,  0],
])

water_xyz = np.array([x[1:] for x in water[1:]]).astype(int)
```

== Sample cont...

```python
print(water)
print(water_xyz)
print(rot_mat)

water_xyz_rot = np.matmul(water_xyz, rot_mat)
print(water_xyz_rot)
```

== Thank You

Questions?
