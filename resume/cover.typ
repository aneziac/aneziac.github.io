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
  // Dear Jane Doe, \
  // \
  //

  I believe I would be a strong fit for the Software Design Student Assistant role at BioPACIFIC MIP.
  Career-wise, I hope to become a scientist in some kind of software-based role, so the job description immediately caught my eye.
  Over the past four years, I've worked with many of the relevant technologies, including most notably my role as a Vue developer last summer, which incidentally involved some work on our `axum`-based `Rust` backend.
  In addition, for the first time in a long while during my undergrad, I currently have a relatively light schedule, which means I could start working immediately this quarter.

  \
  \
  Throughout my undergrad, I have used a variety of scientific software.
  For instance, I developed my `numpy`, `matplotlib`, and `scipy` skills in my Computational Science course (CS 111), as well as in the more mathematically rigorous Numerical Analysis series (Math 104AB); I also briefly used MATLAB in an electrical engineering course, and am now using `torch` in my current Machine Learning class.
  While these packages may differ from the software in the job description, which seems to focus more on handling biological data, at the very least I have a strong understanding of the conventions and documentation style of scientific software.
  Further, the job description seems to imply documentation is wiki-based, which I am very familiar with as an experienced Wikipedia editor.

  \
  \
  As for writing a mobile app, I should mention that I worked on a demo mobile app using Swift and Xcode while in high school.
  Although it's been a while since I've used Swift, I am confident in my ability to pick it back up quickly.
  Further, I'm a lifelong Apple user, owning a Macbook and iPhone, and feel intimately familiar with Apple devices.
  I own a Linux Mint laptop too, which I've been daily driving for the past nine months.
  As mentioned previously, I worked as a web developer intern last summer, and feel fairly comfortable with TypeScript.
  As Svelte is mentioned in the description, I'd like to highlight that I built my first Svelte project as part of this year's SBHacks, which is available on my Github.
  I have not used Django before (but am comfortable with Flask), and am reasonably familiar with working with APIs.

  \
  \
  Lastly, because my schedule is relatively light, I am able to start working this quarter.
  I would prefer to work part-time and finish up some GEs over the summer, but depending on deadlines, I am happy to transition to a full-time role.

  \
  \
  Thank you for considering my application.
  I will remain in Santa Barbara over the summer, so please do not hesitate to let me know if I would be a good fit.
  \
  \

  Best regards, \
  #first-name #last-name
]
