#let meta = toml("info.toml")

#import meta.import.lib-path: cover-letter, recipient-entry, cv-section
#import meta.import.fontawesome: *

#let first-name = meta.personal.first_name
#let last-name = meta.personal.last_name
#let text-size = eval(meta.layout.text.cover_letter_size)
#show: cover-letter.with(meta)
#set text(size: text-size)


// #recipient-entry(
//   name: [Jane Doe],
//   title: [Hiring Manager],
//   company: [Cyberdyne Systems],
//   address: [123 Skynet Lane, Los Angeles, CA 90001, USA],
// )

#v(20pt)

// Alternative date formatting
//#datetime.today().display()
//
// #datetime.today().display("[day]/[month]/[year]")

// = Senior AI Engineer in search of new challenges

// #v(10pt)

#par(justify: true)[
  I am a double major in Mathematics and Computer Science at UC Santa Barbara with a strong interest in computational science.
  I have built a strong foundation through coursework in numerical analysis, real analysis, algorithms, and Lagrangian mechanics, complemented by graduate-level work in measure theory and PDE methods.

  \
  \
  Currently, I work as an undergraduate researcher in the Computational Applied Science Lab at UCSB, where I am developing a CUDA-based solver for Hamilton-Jacobi equations, with applications in control theory and computational neuroscience.
  This experience has deepened my interest in numerical methods and parallel computing, and I am eager to apply these skills to challenging problems in scientific computing.

  \
  \
  My previous internships have given me experience with performance-critical systems and rigorous software development practices.
  At Playlab AI, I developed benchmarking frameworks for document parsing systems, and at HiveTop, I worked on embedded device telemetry systems using Rust.
  These roles strengthened my ability to write efficient, maintainable code for technical applications.

  \
  \
  I am particularly drawn to the National Laboratory of the Rockies, and feel that my experience would be relevant for data visualization.
  I would welcome the opportunity to contribute to ongoing research while developing my skills in computational science.
  I plan to pursue a master's degree in applied mathematics in Germany and am focused on building a career at the intersection of mathematics, computing, and scientific research.

  \
  \
  I can provide references upon request.

  \
  \
  Best regards, \
  #first-name #last-name
]
