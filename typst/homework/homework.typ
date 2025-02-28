#set document(
  title: "A typst document",
  author: "Alessandro Rizzoni",
  keywords: ("typst", "template"),
  date: auto,
)

#set text(
  font: "STIX Two Text",
  size: 12pt,
  lang: "en",
  region: "US",
)

#show math.equation: set text(
  font: "STIX Two Math",
  size: 12pt,
)

#set raw(theme: none)
#show raw: set text(
  font: "Courier Prime Code",
  size: 10pt,
)

= A Sinusoidal Function

$ f = frac(1, 10) $
$ omega = 2pi f = frac(2pi, 10) $
$ x = sin(omega t) $

#let text = read("sinusoid-plot.py")
#raw(text, lang: "python")

#figure(
  include "sinusoid-plot.typ",
  kind: image,
  caption: "Simple line plot",
  placement: top,
)

