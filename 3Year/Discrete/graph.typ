// Document settings
#set page(
  paper: "a4",
  margin: (x: 1.5cm, y: 2cm),
)

// Fast shortcuts

#let R = $bb(R)$
#let N = $bb(N)$
#let implies = $arrow.r.double$
#let iff = $<==>$

// Find "Thm" followed by a space and number/dots, and replace it
#show regex("thm (\d+(\.\d+)?)"): it => [
  _Theorem #it.text.slice(4)_
]

#let theorem(body) = block(
  width: 100%,
  stroke: (left: 2pt + blue.darken(20%)),
  inset: (left: 10pt, y: 4pt),
  fill: blue.lighten(95%),
  [_Theorem_ #italic(body)]

)

#theorem([
  this is what i dont wahtn
])

thm 1
