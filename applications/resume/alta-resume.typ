#let background_color = rgb(250, 250, 250)
#let primary_color    = rgb(78, 119, 234)
#let secondary_color  = rgb(57, 130, 183)
#let link_color       = rgb("#9d0006")

#let icon(name, shift: 1.5pt) = {
  box(
    baseline: shift,
    height: 10pt,
    image("icons/" + name + ".svg")
  )
  h(3pt)
}

#let findMe(services) = {
  set text(8pt)
  let icon = icon.with(shift: 2.5pt)

  services.map(service => {
      icon(service.name)

      if "display" in service.keys() {
        if service.link != "" {
          link(service.link)[#underline[#{service.display}]]
        } else {
          service.display
        }

      } else {
        underline[#link(service.link)]
      }
    }).join(h(10pt))
  [

  ]
}

#let term(period, location) = {
  text(9pt)[#icon("calendar") #period #h(1fr) #icon("location") #location]
}

#let max_rating = 5
#let skill(name, rating) = {
  let done = false
  let i = 1

  name

  h(1fr)

  while (not done){
    let colour = rgb("#c0c0c0") // grey

    if (i <= rating){
      colour = primary_color
    }

    box(circle(
      radius: 4pt,
      fill: colour
    ))

    if (max_rating == i){
      done = true
    } else {
      // no spacing on last
      h(2pt)
    }

    i += 1
  }

  [\ ]
}

#let styled-link(dest, content) = emph(text(
    // fill: link_colour,
    link(dest, content)
  ))

#let alta(
  name: "",
  links: (),
  tagline: [],
  content,
) = {
  set text(
    9.8pt,
    fill: rgb(56, 58, 65),
  )
  set page(
    margin: (x: 32pt, y: 38pt),
    paper: "us-letter",
    fill: background_color
  )

  show heading.where(
    level: 1
  ): it => text(
    fill: primary_color,
    size: 20pt,
  )[
    #{it.body}
  ]

  show heading.where(
    level: 2
  ): it => text(
      fill: primary_color,
    [
      #{smallcaps[#it.body]}
      #v(-7pt)
      #line(length: 100%, stroke: 1pt + primary_color)
    ]
  )

  show heading.where(
    level: 3
  ): it => text(it.body)

  show heading.where(
    level: 4
  ): it => text(
    fill: secondary_color,
    weight: "extrabold",
    it.body
  )

  // show link: l => text(fill: secondary_color, l)

  grid(
    columns: (1fr, auto),
    [= #name],
    align(right + bottom, findMe(links))
  )

  emph[#tagline]
  v(1em)

  columns(
    2,
    gutter: 20pt,
    content,
  )
}
