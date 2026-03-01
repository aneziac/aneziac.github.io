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
  I am a double major in Mathematics and Computer Science at UC Santa Barbara with an interest in computer security.
  I have built a strong foundation through undergraduate coursework in computer architecture and computer security, complemented by work in autonomous bug identification techniques through my graduate computer security course.
  In addition, I have completed around 10 CTFs in the past year, as a member of my CTF team, newline (currently #60 in the USA).

  \
  \
  At my previous internship at Playlab AI, I found several minor security vulnerabilities (mainly possible DoS attack vectors), and performed an audit of my area of the codebase.
  While my main job was software development, I kept a watchful eye out for security vulnerabilities.
  During the summer, I flew to Las Vegas for DEF CON 33, and participated in several security challenges there.
  Most notably, I ended up getting 2nd place out of 300+ competitors in a geographic OSINT challenge.

  \
  \
  I am particularly drawn to Los Alamos National Lab, and feel that my experience would be relevant for positions in cybersecurity and critical infrastructure.
  I would welcome the opportunity to contribute to ongoing research while developing my skills in computer security.
  I plan to pursue a master's degree in applied mathematics in Germany and am focused on building a career at the intersection of mathematics, computing, and scientific research.

  \
  \
  I can provide references upon request.

  \
  \
  Best regards, \
  #first-name #last-name
]
