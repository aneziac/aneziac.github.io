#import "alta-typst.typ": alta, term, skill, styled-link

#alta(
  name: "Nate Annau",
  links: (
    (name: "phone", link: "", display: "(650) 670-6379"),
    (name: "email", link: "mailto:nateannau@gmail.com"),
    (name: "website", link: "https://nateannau.com", display: "nateannau.com"),
    (name: "github", link: "https://github.com/aneziac", display: "@aneziac"),
    (name: "linkedin", link: "https://www.linkedin.com/in/nate-annau-2247a32a9/", display: "linkedin.com/nate-annau"),
  ),
  tagline: [Undergraduate Math and Computer Science Student],
  [
    == Education

    === UC Santa Barbara \
    _Bachelor of Science in Computer Science (3.87 GPA)_\
    #term[Sep 2023 --- Jun 2026][Santa Barbara, CA]

    Notable Coursework: Data Structures & Algorithms; Machine Learning; Quantum Computing; Functional Programming

    === UC Santa Barbara \
    _Bachelor of Science in Mathematics (3.87 GPA)_\
    #term[Sep 2022 --- Jun 2026][Santa Barbara, CA]

    Notable Coursework: Real, Numerical, and Complex Analysis; Linear Algebra; Abstract Algebra; Topology
unit
    Completed a #underline[#link("https://www.ucsbdrp.org/")[Directed Reading]] and associated #underline[#link("https://github.com/aneziac/drp2025")[poster presentation]], covering Coxeter Groups and Buildings

    === Cañada College \
    _Dual enrollment through Cañada Middle College (4.0 GPA)_ \
    #term[Jun 2020 --- May 2022][Redwood City, CA]

    == Experience

    === Software Engineering Intern \
    _Playlab AI _\
    #term[Jun 2025 --- Sep 2025][Remote]

    - Rigorously compared various document parsing services for RAG by developing a custom benchmarking framework
    - Expanded parsing and chunking capabilities significantly in the internal API, adding handling for common data formats
    - Used heavy typing features in Python, focusing on maintainability and readability, and greatly expanded unit tests

    === Software Engineering Intern \
    _HiveTop_\
    #term[Jun 2024 --- Aug 2024][Berlin, Germany]

    - Developed key pages, such as a graph dashboard for device telemetry, of a frontend platform using `Vue` and `Tailwind` with `Primevue` components
    - Created REST endpoints in the `Rust` backend to facilitate data transmission from embedded devices
    - Architected major elements of our CI / CD setup, using Github actions, `ESLint`, and `mypy`

    === STEM Center Tutor \
    _Cañada College_\
    #term[Jan 2022 --- May 2022][Redwood City, CA]

    - Assisted students with homework and mastering key concepts in Calculus, Differential Equations, and Newtonian Mechanics
    - Created high quality study materials and explanations to address common deficiencies in student understanding

    #colbreak()
    == Projects

    ==== #link("https://github.com/EsotericSquishyy/ergo")[Ergo]

    - In collaboration with my friend, developed a #underline[#link("https://typst.app/")[`Typst`]] package for notetaking and assignments for Math, CS, and Physics students
    - Wrote over a dozen custom environments, custom color schemes, and #underline[#link("https://github.com/EsotericSquishyy/superTemplate")[over one hundred macros for common symbols]]
    - The package is actively maintained, has 30+ stars on Github, and is being used for a PhD thesis at a French university

    #v(1.5em)

    ==== #link("https://github.com/aneziac/courses_graph")[Courses Graph]

    - Scraped the UCSB website with `Python`, queried the UCSB API, and synthesized the data as JSON
    - Dynamically displayed course data using a constrained optimization library and `d3`, with `Quasar` components
    - Presented working prototype in front of audience of peers and industry judges at the 2023 Coders SB Project Showcase, winning third place out of \~35 projects
    - At SBHacks 2025, extended this general concept to a #underline[#link("https://github.com/aneziac/proof_wiki_vis")[visualization of the dependency graph of Proof Wiki]]

    #v(1.5em)

    ==== Open Source Contributions

    - Contributor to #underline[#link("https://github.com/epogrebnyak/weo-reader")[`weo-reader`]], a Python client to read world economic data from the IMF as a `pandas` dataframe
    - Authored #underline[#link("https://en.wikipedia.org/wiki/Special:Contributions/Humsorgan")[just under one thousand Wikipedia contributions]], and wrote several tools to help automate data collection
    - Made corrections and wrote a chapter for a popular #underline[#link("https://github.com/wmboyles/Math-Summaries")[online summary textbook of early undergraduate math courses]]

    #v(1.5em)

    ==== CTFs

    - Won second place out of 300+ participants in the Geo OSINT challenge at DEF CON, the world's largest hacker conference
    - As the second highest scoring individual contributor on my CTF team, #underline[#link("https://ctftime.org/team/364095")[placed in the top 6%]] in the #underline[#link("https://ctftime.org/event/2658")[PwnMe CTF Qualifier]]
    - As the third highest scoring individual contributor on the UCSB CTF team, placed in the top 15% in the #underline[#link("https://ctftime.org/event/2539/")[HackTheBox Binary Badlands University CTF]]

    #v(1.9em)

    == Languages and Tools

    #skill("Python (numpy, pandas, Flask)", 4)
    #skill("Git", 4)
    #skill("Linux (Ubuntu, Arch, Nix)", 4)
    #skill("TypeScript (Vue.js, Svelte)", 3)
    #skill("Neovim", 3)
    #skill("Rust", 2)
    #skill("C++", 2)
    // #skill("Lua", 2)
    // #skill("OCaml", 1)
    // #skill("C", 1)
    // #skill("Swift", 1)
  ],
)
