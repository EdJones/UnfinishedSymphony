// Unfinished Work Brief — current working master, infrastructure pass
// Compile with: typst compile unfinished-work-brief-current-1Sept-v3.typ

#let navy = rgb("2c3e50")
#let blue = rgb("3498db")
#let ink = rgb("263238")
#let muted = rgb("66717c")
#let pale = rgb("f3f7fa")
#let rule = rgb("dce5eb")

#set page(
  paper: "us-letter",
  margin: (x: 0.58in, y: 0.50in),
  footer: context [
    #set text(font: "Inter", size: 6.8pt, fill: muted)
    #grid(columns: (1fr, auto),
      [SKUNKWORKS/EDU  ·  THE UNFINISHED WORK],
      [#counter(page).display("1")]
    )
  ],
)
#set text(font: "Inter", size: 7.75pt, fill: ink)
#set par(justify: true, leading: 0.58em)
#set heading(numbering: none)

#let kicker(body) = text(font: "Inter Display", size: 7.4pt, weight: 700, tracking: 0.08em, fill: blue, body)
#let section(body) = block(above: 6pt, below: 3.5pt)[
  #text(font: "Inter Display", size: 11.8pt, weight: 700, fill: navy, body)
]
#let minihead(body) = text(font: "Inter Display", size: 7.5pt, weight: 700, fill: navy, body)
#let callout(body) = block(
  fill: pale,
  stroke: (left: 3pt + blue),
  inset: (x: 9pt, y: 7pt),
  radius: 2pt,
  above: 5pt,
  below: 6pt,
)[#text(font: "Inter Display", size: 10.5pt, weight: 650, fill: navy, body)]
#let stat(number, body) = block(
  fill: rgb("#2E6B4F"),
  inset: (x: 10pt, y: 9pt),
  radius: 3pt,
)[
  #grid(
    columns: (auto, 1fr),
    gutter: 8pt,
    align: (top + left, top + left),
    text(font: "Inter Display", size: 20pt, weight: 700, fill: white)[#number],
    text(size: 7.6pt, weight: 600, fill: white)[#body],
  )
]
#let source(n, body) = block(above: 3pt, below: 0pt)[
  #set par(leading: 0.42em, justify: false)
  #text(size: 5.8pt, fill: muted)[#n. #body]
]
#let cite(..nums) = super[#text(size: 9pt, fill: blue, weight: 700)[#nums.pos().map(str).join(",")]]
#let piece(n, title, body) = block(
  fill: pale,
  inset: 8pt,
  radius: 3pt,
)[
  #grid(columns: (auto, 1fr), gutter: 6pt,
    [#text(font: "Inter Display", size: 8.4pt, weight: 700, fill: blue)[#n]],
    [#text(font: "Inter Display", size: 10.6pt, weight: 700, fill: navy)[#title]]
  )
  #v(4pt)
  #text(size: 7.65pt)[#body]
]

// PAGE 1
#kicker[THE UNFINISHED WORK]
#v(-2pt)
#block(below: 0pt)[
  #set par(leading: 0.32em, spacing: 0pt)
  #text(font: "Inter Display", size: 22pt, weight: 700, fill: navy, tracking: -0.02em)[
    An Unfinished Symphony:\
    Completing the Playbook for Reading Education
  ]
]
#v(9pt)
#grid(
  columns: (auto, 1fr),
  align: (horizon + left, horizon + left),
  column-gutter: 8pt,
  [
    #let noteColors = (rgb("#C0392B"), rgb("#E0A526"), rgb("#2E8B57"), blue)
    #let ringSize = 30pt
    #let radius = 10.5pt
    #let noteCount = 8
    #box(width: ringSize, height: ringSize)[
      #for i in range(noteCount) [
        #let ang = 360deg * i / noteCount - 90deg
        #let cx = ringSize/2 + radius * calc.cos(ang) - 4pt
        #let cy = ringSize/2 + radius * calc.sin(ang) - 4pt
        #place(top + left, dx: cx, dy: cy)[
          #if i == 6 or i == 7 [
            #text(size: 8pt, fill: rgb("dce5eb"))[♪]
          ] else [
            #text(size: 8pt, fill: noteColors.at(calc.rem(i, 4)))[♪]
          ]
        ]
      ]
    ]
  ],
  [
    #block(above: 0pt)[
      #set par(spacing: 0pt)
      #text(size: 10.8pt, fill: muted)[
        Why researchers, teachers, and writers now argue America's reading crisis is a *professionalization problem — not a knowledge one.*
      ]
    ]
  ],
)
#v(2pt)
#line(length: 100%, stroke: 1.5pt + rgb("#E0A526"))
#v(7pt)

#grid(
  columns: (1.16fr, 0.84fr),
  gutter: 0.25in,
  [For many, the Science of Reading movement has entered its ‘trough of
  despair’. Not only are nationwide scores not up; they are, in fact, down.
  Finger-pointing has begun. “Too much phonics”. “Not enough whole
  books.” “Time wasted on phonemic awareness.” “MTSS doesn’t work.”

  The uncomfortable truth is that structured literacy suffers from the same confusion as “balanced literacy”. It remains — in its fine-grained elements — under-defined.#cite(1)
  #v(8pt)

    #section[The problem shifts:
      How to make good practices pervasive?]
    #v(6pt)
    For decades, reading reform centered on getting evidence-aligned instruction into more than a minority of classrooms.

    By 2023, Mark Seidenberg was pressing a different question: now that demand for the science of reading had grown, where was the expertise and infrastructure needed to turn a large, changing research base into dependable practice? Teachers should not have to become cognitive scientists; the science has to be built into the systems around them.

    //#callout[]

    By mid-2026, calls for system integration solutions had appeared from a variety of experts. A panel with Doug Carnine, Sarah Oberle, Mike Schmoker, and Robert Pondiscio offers a video synopsis of these.#cite(11)

    In Congress, legislation for an NRP 2.0 has passed out of the Appropriations Committee. If it becomes law, will this solve the problem at hand?

    At the scale of millions of teachers and thousands of intermediaries, messages drift as they propagate. Would NRP 2.0 adequately address this?
  ],
  [
    #stat[~40%][
      of U.S. fourth-graders read below NAEP Basic in 2024.

      #v(4pt)
      Black fourth-graders face massive, systemic hurdles in reading.
    ]

    #section[From awareness to consistency]
    #v(2pt)
    #text(size: 7.5pt)[
      #minihead[2023 · SEIDENBERG]#cite(2,3)
      The science has won attention, but research expertise is thin throughout the education system. Translation and professional infrastructure are missing.

      #v(2pt)
      #minihead[2024-25 · JONES]#cite(4,6)
      A living profession needs "garbage collection"; other professions have solutions that can help cut instructional waste, reduce opportunity costs, help kids read.

      #v(2pt)
      #minihead[2024-26 · CALLS FOR NRP 2.0]#cite(5,7,8)
      In the wake of unsustained and unscaled improvement, calls grow for a new National Reading Panel to synthesize research done since NRP I.

      #v(2pt)
      #minihead[2025-26 · CARNINE/LYON]#cite(9,10,11,12,15)
      frame the problem as professionalization: shared knowledge, common language, aligned preparation, competence-based licensure, accountability.

      #v(2pt)
      #minihead[2026 · TIPTON/PATTON-TERRY]#cite(13)
      Beyond the science of reading, we need an "engineering of reading."
    ]
  ]
)


// PAGE 2 — infrastructure content pass
//#pagebreak()


#v(7pt)

#block(
  fill: pale,
  inset: (x: 15pt, y: 14pt),
  radius: 5pt,
)[
  #set par(justify: false, leading: 0.52em, spacing: 0pt)
  #kicker[THE BEGINNINGS OF PROFESSIONAL INFRASTRUCTURE]
  #v(7pt)
  #text(font: "Inter Display", size: 16pt, weight: 700, fill: navy)[
    The pieces steadily come online
  ]
  #v(11pt)
  #text(size: 10.2pt, fill: muted)[
    Reading education has begun to acquire much-needed tools and structures.
  ]
  #v(8pt)
  #grid(
    columns: (1fr, 1fr),
    gutter: 14pt,
    [
      #text(font: "Inter Display", size: 8pt, weight: 700, fill: navy)[The Reading League: quality standards for foundational curricula]#cite(14)
      #v(4pt)
      #text(size: 7pt)[Its Curriculum Evaluation Guidelines and Navigation Reports help schools make better choices.]
      #v(7pt)
      #text(font: "Inter Display", size: 8pt, weight: 700, fill: navy)[Reading Rockets + Reading Universe]#cite(16,17)
      #v(4pt)
      #text(size: 7pt)[Reading Rockets has been refurbished and updated; Reading Universe adds a newer, practical, video-rich body of guidance.]
      #v(7pt)
      #text(font: "Inter Display", size: 8pt, weight: 700, fill: navy)[State-built professional learning: training becomes infrastructure]#cite(18,19)
      #v(4pt)
      #text(size: 7pt)[States are increasingly building grade-, role-, and context-specific training, administrator pathways, and refresher modules.]
      #v(7pt)
      #text(font: "Inter Display", size: 8pt, weight: 700, fill: navy)[UFLI brings a free, quality phonics program, with training.]
      #v(4pt)
      #text(size: 7pt)[Scope and sequence, routines, assessments, videos, fidelity tools, and implementation supports package research.]
      #v(7pt)
      #text(font: "Inter Display", size: 8pt, weight: 700, fill: navy)[State-Coordinated Coaching Networks]#cite(20)
      #v(4pt)
      #text(size: 7pt)[While 26 states have adopted some form of coaching policies, 8 have the type of coordinated field force that brought Mississippi its gains.]
      #v(7pt)
      #text(font: "Inter Display", size: 8pt, weight: 700, fill: navy)[Learning Science Practices | ResearchEd ]
      #v(4pt)
      #text(size: 7pt)[Led by our friends in the UK, teachers are tying day to day teaching to learning science well beyond structured literacy.]
      #v(7pt)
      #text(font: "Inter Display", size: 8pt, weight: 700, fill: navy)[Teacher-prep standards and audits: Fixing the Ed Schools ]#cite(21,22)
      #v(4pt)
      #text(size: 7pt)[NCTQ's systematic reviews of teacher-preparation programs — combined with state program reviews — audit whether education schools actually teach structured literacy.]
    ],
    [
      #text(font: "Inter Display", size: 8pt, weight: 700, fill: navy)[Knowledge Matters: supporting knowledge-building]#cite(23)
      #v(4pt)
      #text(size: 7pt)[The Knowledge Matters Campaign focuses on the critical role of knowledge-building in early literacy, and on approaches to do so.]
      #v(7pt)
      #text(font: "Inter Display", size: 8pt, weight: 700, fill: navy)[Johns Hopkins ELA Knowledge Map]#cite(24)
      #v(4pt)
      #text(size: 7pt)[With the ELA Knowledge Map, reviewers can explore the domains, sequencing, coherence, and gaps in a curriculum's content knowledge.]
      #v(7pt)
      #text(font: "Inter Display", size: 8pt, weight: 700, fill: navy)[The EdReports reckoning]#cite(25,26)
      #v(4pt)
      #text(size: 7pt)[The exposure of serious weaknesses in the Ed Reports definition of "evidence-based" has led it to release a "2.0 Review Criteria", and to users being far more circumspect about its ratings.]
      #v(7pt)
      #text(font: "Inter Display", size: 8pt, weight: 700, fill: navy)[Podcasts and specialist media: solid learning]#cite(27)
      #v(4pt)
      #text(size: 7pt)[A strong ecosystem of  podcast series and specialist videos now lets those with the inclination learn on their own schedule.]
      #v(7pt)
      #text(font: "Inter Display", size: 8pt, weight: 700, fill: navy)[Social-Media Dispersal and Discussion]
      #v(4pt)
      #text(size: 7pt)[The Facebook Group Science of Reading-What I Should Have Learned in College now has 250,000 members. An extremely well-informed X community daily discusses the hard cases of Strucured Literacy. Substack gives longer-form ideas immediate feedack.]
      #v(7pt)
      #text(font: "Inter Display", size: 8pt, weight: 700, fill: navy)[R&D and Systems for older readers, too]#cite(28,29)
      #v(4pt)
      #text(size: 7pt)[From more structured fifth-grade word study to systems for severe high school remediation; from individually-authored programs to high end programs like Reading Reimagined, all K12 literacy is getting love.]
    ],
  )

  #v(2pt)

]
#line(length: 100%, stroke: 0.8pt + rule)


//#pagebreak()
#block[
  #let dnavy = rgb("#18324A")
  #let dblue = rgb("#2F6F9F")
  #let dpale = rgb("#EEF4F8")
  #let dmuted = rgb("#667580")
  #let dlinec = rgb("#A8BAC7")

  #set text(9pt, font: "Helvetica", fill: rgb("#1E2933"))
  #set par(justify: false)

  #text(21pt, weight: "bold", fill: dnavy)[Building Consistent Nationwide Teaching Capability]
  #v(-8pt)
  No one should doubt the remarkable success represented in the above components. Few, indeed, would have had reason to expect us to have come so far, so fast.
  //#linebreak()
  //#text(26pt, weight: "bold", fill: dnavy)[Reading Capability]

  #v(0.08in)

  #text(12.5pt, weight: "bold", fill: dnavy)[Still Missing]
  #v(-6pt)

  Yet there remains missing an integrating framework. A unifying structure that ties together the various components of the system.

  #block(
    width: 100%,
    fill: rgb("#FEFAF9"),
    inset: (x: 0.2in, y: 0.12in),
    radius: 6pt,
  )[
    #text(9pt, fill: rgb("#8C2F2F"))[The Gaps — A Case Study]
    #v(-5pt)
    #text(8pt, fill: dnavy)[
      Is Reading Universe a suitable knowledge base?
      It would apppear so: it explains phonemic awareness, decoding, fluency, vocabulary, morphology, and many classroom routines quite well.

      Yet critical components are missing: Knowledge-building is not developed as a major segment. Fine-grained issues such as morphophonemic alternation in complex multisyllabic words receive little treatment. Poor practices like teaching "blends" remain.



      Further, research traceability is inconsistent and not built into the architecture. It lacks the maintenance, issue tracking, version control, and feedback processes critical to the profession.
    ]
  ]


  #v(2pt)

  #text(12.5pt, weight: "bold", fill: dnavy)[Four Approaches]

  #v(-4pt)
  #block(
    width: 100%,
    inset: 0.18in,
    radius: 6pt,
    stroke: 0.75pt + rgb("#7A9CB8"),
  )[
    #text(10pt, weight: "bold", fill: dnavy)[NRP 2.0 ]
    #v(-5pt)
    #text(8pt)[
      While some argue for a new National Reading Panel, the truth is that experts have long been monitoring, sharing, and projecting the updated research. A government-sponsored panel of experts may seem a viable next step. Yet there are better ways to achieve what's needed.#cite(7,8)
    ]
  ]

  #v(0pt)
  #block(
    width: 100%,
    inset: 0.18in,
    radius: 6pt,
    stroke: 0.75pt + rgb("#7A9CB8"),
  )[
    #text(9pt, weight: "bold", fill: navy)[An 'Engineering of Reading']
    #v(-5pt)
    #text(8pt)[
      Its a good phrase: an engineering mindset is definitely needed. Today we have more of a writers + publishers mentality driving the system - extremely useful, yet insufficient to the need.
      #linebreak()
      On the other hand, engineering-like documents can only be intermidate steps. Not teacher- or trainer-facing work products. The various engineering professions are all smaller, and generally draw from a more academically elite demographic base than teaching. Where they can suffer more technical jargon, the teaching profession cannot.
    ]
  ]

  #v(0pt)
  #grid(
    columns: (1fr, 1fr),
    gutter: 0.18in,
    block(
      width: 100%,
      inset: 0.18in,
      radius: 6pt,
      stroke: 0.8pt + rgb("#2ecc40"),
    )[
      #text(9pt, weight: "bold", fill: dnavy)[A Field Manual System]
      #v(-5pt)
      #text(8pt)[
        Here, the focus is on the median teacher (with various 'extra duties', a suppemental coaching contract, 3 kids at home, maybe a parent needing care).#cite(30)

        Part natural 'Field guide' (describing nature); part field manual (describing a working system and default operating procedures), not just print, but a science-backed collection of the best all-media resources for learning structured literacy.

        Field manuals are something much more than a mere book published by one or two authors, and far more than the standard blog post, video, or podcast episode (not that those don’t serve!), and more than a website of independently authored white papers.#cite(31)

        They are a snapshot of the institution’s understanding of best practices: grade-by-grade scope and sequence, explicit routines, decision rules for common classroom situations, diagnostic and progress-monitoring tools, and checklists.

        More than that, they are created not just to publish information, but to teach it. They are designed for people who are not first and foremost knowledge workers. They are written with the objective of being read by (in Pondiscio’s words) mere mortals.

        They not ony explain the research base; they use learning science and instructional principles in their own design for teacher/trainer learning.
      ]
    ],
    block(
      width: 100%,
      inset: 0.18in,
      radius: 6pt,
      stroke: 0.8pt + rgb("#2ecc40"),
    )[
      #text(9pt, weight: "bold", fill: dnavy)[A Community-Maintained Cannonical Source]
      #v(-5pt)
      #text(8pt)[
        Teaching, in the US, is a far larger, and more decentalized profession than most. It has no clear institutional center. Thus, while the US military is a similarly-sized profession, and the US Army's doctrine and manual system provides a solid model for a knowledge center, reading education has no TRADOC equivalent to organize and maintain such a cannonical source.

        There is, tho, a similarly-sized profession, with similarly decentralized leadership. And they have solved this challenge.

        For thirty years, communities of open source software developers have collaboratively built not just products, but documentation and all manner of tools to support the open source processes.

        In time, a unique culture also developed, to support those people, methods, and tools. Habits of mind actually changed to support the new model.

        Reading education can import that culture and process.

        #pad(left: 10pt)[
          #text(6.5pt)[#text(weight: "bold", fill: dnavy)[Processes.] Named maintainers, contribution rules, issue tracking, version control, review cycles, tests, release histories.]

          #text(6.5pt)[#text(weight: "bold", fill: dnavy)[Culture.] Contribute, don't complain. Many eyes make bugs shallow. Being specifically wrong beats being right and vague.]
        ]

        The resulting knowledge base is more reliable precisely because many capable people can inspect it, challenge it, and improve it — without any one organization holding all the expertise.


      ]
    ],
  )

  #v(0.06in)
  #grid(
    columns: (1.3fr, 1fr),
    align: (horizon + left, horizon + center),
    gutter: 0.15in,
    [
      #text(18pt, weight: "bold", fill: dnavy)[Moving Past Publish & Forget:]
      #v(-4pt)
      #text(13pt, weight: "bold", fill: dnavy)[Bringing in Teachers & Trainers;
      #linebreak()
      Accelerating the Speed of the Loop]
      #v(-4pt)
      #text(8pt, fill: dmuted)[The difference between the two models is not the document. It is whether anything happens after the document ships.]
    ],
    [
      #let docVersion = "v0.1"
      #let docStatus = "Preview"
      #let docDate = "Sept 21, 2026"
      #image("canonical-source-roles.png", width: 2.25in)
      #v(-2pt)
      #block(
        width: 2.25in,
        inset: (x: 8pt, y: 4pt),
        radius: 5pt,
        fill: dpale,
        stroke: 0.8pt + dblue,
      )[
        #set par(justify: false, leading: 0.48em, spacing: 0pt)
        #align(center)[#grid(
          columns: (auto, auto),
          gutter: 4pt,
          align: horizon + left,
          text(6.5pt, tracking: 0.09em, fill: dblue)[#text(fill: dmuted)[This is] #text(weight: "bold")[VERSION]],
          text(7pt, fill: rgb("#1E2933"))[#text(weight: "bold", fill: dnavy)[#docVersion] - #docStatus],
        )]
        #v(2pt)
        #align(center)[
          #text(7pt, fill: rgb("#1E2933"))[#docDate \u{00B7} Help improve this #link("https://github.com/EdJones/UnfinishedSymphony/issues")[#text(weight: "bold", fill: dblue)[#underline[here]]]]
        ]
      ]
    ],
  )
  #v(-8pt)

  Let's look at some details of practice:
  - After K-1 MOY assessments, many teachers are unsure of what to do with the data.
  - A decision tree is needed. It will look different for different grades, and assessment products.
  - A true expert in the field creates one, and it seems good. It considers changes to Tier I instruction, using additional diagnostics, arranging Tier II intervention, and more.


  #v(8pt)

  // ---- diagram: publish-and-forget vs. maintained-in-the-open ----
  #let dgrey = rgb("#93A0A9")
  #let dstop = rgb("#8C2F2F")

  #let step(body, tag: none, dead: false) = block(
    width: 100%,
    inset: (x: 8pt, y: 4pt),
    radius: 5pt,
    fill: if dead { rgb("#F5F6F7") } else { dpale },
    stroke: 0.8pt + (if dead { dgrey } else { dblue }),
  )[
    #set par(justify: false, leading: 0.48em, spacing: 0pt)
    #text(7.4pt, fill: rgb("#1E2933"))[#body]
    #if tag != none [
      #v(2.5pt)
      #text(5.5pt, weight: "bold", tracking: 0.04em, fill: if dead { dgrey } else { dblue })[#upper(tag)]
    ]
  ]

  #let arw(sym, c) = align(center + horizon)[#text(13pt, fill: c)[#sym]]
  #let vgap(sym, c) = align(center, pad(y: 3pt, text(12pt, fill: c)[#sym]))

  #block(breakable: false, above: 0pt, below: 0pt)[
  #set block(above: 0pt, below: 0pt)
  #align(center)[#block(
    width: 60%,
    inset: (x: 8pt, y: 5pt),
    radius: 5pt,
    fill: dpale,
    stroke: 0.8pt + dnavy,
  )[
    #set par(justify: false, leading: 0.48em, spacing: 0pt)
    #align(center)[
      #text(7.4pt, weight: "bold", fill: dnavy)[The same expert writes the same guidance.]
      #v(3.5pt)
      #text(5.5pt, weight: "bold", tracking: 0.09em, fill: dnavy)[THE TWO MODELS ARE IDENTICAL UP TO THIS POINT]
    ]
  ]]

  #grid(
    columns: (1fr, 0.28in, 1fr),
    gutter: 0pt,
    vgap("\u{2193}", dgrey), [], vgap("\u{2193}", dblue),
  )
  #v(2pt)

  #grid(
    columns: (1fr, 0.28in, 1fr),
    gutter: 0pt,

    // ===== LEFT: publish and forget =====
    [
      #text(8.5pt, weight: "bold", tracking: 0.06em, fill: dgrey)[PUBLISH AND FORGET]
      #v(4pt)
      #step(tag: "the document is the deliverable")[Published as finished product: a blog post, podcast, book, webinar, etc.]
      #vgap("\u{2193}", dgrey)
      #step[Distribution to the field is spotty. Expert review even more uneven. Incorporation into live PD perhaps limited to the author's.]
      #vgap("\u{2193}", dgrey)
      #step(dead: true, tag: "no route back to the source")[Teachers who do see it have questions. A few get asked and answered on X or Substack. Maybe on Facebook-where answers run the gamut.]
      #vgap("\u{2193}", dgrey)
      #block(
        width: 100%,
        inset: (x: 8pt, y: 5pt),
        radius: 5pt,
        fill: rgb("#FEFAF9"),
        stroke: 0.8pt + dstop,
      )[
        #set par(justify: false, leading: 0.48em, spacing: 0pt)
        #text(7.4pt, weight: "bold", fill: dstop)[Dead end.] #text(7.4pt, fill: rgb("#1E2933"))[Later, another expert repeats the process.]
      ]
    ],

    [],

    // ===== RIGHT: maintained in the open =====
    [
      #text(8.5pt, weight: "bold", tracking: 0.06em, fill: green)[OPEN SOURCE ETHOS, TOOLS, PROCESSES]
      #v(4pt)
      #grid(
        columns: (1fr, 0.56in, 1fr),
        rows: (auto, 0.15in, auto),
        column-gutter: 0pt,
        row-gutter: 0pt,

        step(tag: "version controlled release")[Proposal is released to single canonical source, version-numbered and dated.],
        arw("\u{2192}", dlinec),
        step(tag: "public issue tracking")[Experts and users weigh in, on an open, linked, issues tracker. (Feedback isn't lost in evaluation forms or a hallway conversations.)],

        arw("\u{2191}", dlinec),
        align(center + horizon)[
          #text(6pt, weight: "bold", tracking: 0.06em, fill: dnavy)[KNOWLEDGE]
          #v(-4pt)
          #text(6pt, weight: "bold", tracking: 0.06em, fill: dnavy)[COMPOUNDS]
        ],
        arw("\u{2193}", dlinec),

        step(tag: "new version approved")[
          Maintainers accept or decline in public, with reasons on the record; the fix ships as the next version.],
        arw("\u{2190}", dlinec),
        step(tag: "contribution from the field")[A teacher, coach, or specialist proposes the actual change \u{2014} not just a complaint.],
      )
      #v(6pt)
      #block(
        width: 100%,
        inset: (x: 8pt, y: 3pt),
        radius: 5pt,
        fill: dpale,
        stroke: (left: 2.5pt + rgb("#2ecc40")),
      )[
        #set par(justify: false, leading: 0.48em, spacing: 0pt)
        #text(7.4pt, weight: "bold", fill: dnavy)[Combinations of guidance can be packaged & published.] #text(7.4pt, fill: rgb("#1E2933"))[Local adaptation stays linked to the source instead of drifting away. A good local fix can travel back up. Fidelity and adaptation stop being opposites.]
      ]
      #v(5pt)
      #block(
        width: 100%,
        inset: (x: 8pt, y: 5pt),
        radius: 5pt,
        fill: dpale,
        stroke: (left: 2.5pt + dblue),
      )[
        #set par(justify: false, leading: 0.48em, spacing: 0pt)
        #text(7.4pt, weight: "bold", fill: dnavy)[Deeper tracking to the science] #text(7.4pt, fill: rgb("#1E2933"))[Trainers and writers can drill down to linked connections to the research-practice edge.]
      ]
      #v(5pt)
      #block(
        width: 100%,
        inset: (x: 8pt, y: 5pt),
        radius: 5pt,
        fill: dpale,
        stroke: (left: 2.5pt + dblue),
      )[
        #set par(justify: false, leading: 0.48em, spacing: 0pt)
        #text(7.4pt, weight: "bold", fill: dnavy)[Nothing is thrown away.] #text(7.4pt, fill: rgb("#1E2933"))[Every prior version stays citable. Changes from 2025 guidance to the 2028 guidance are tracked line by line \u{2014} who changed what, when, and on what evidence.]
      ]
    ],
  )
  ]

  #v(6pt)
  #text(7.2pt, fill: dmuted)[
    In the publish-and-forget model, improvement comes in random acts of innovation. In an open source community, improvement is constant and #text(style: "italic")[cumulative:] the thousands of corrections teachers already make in private become one shared, reviewed, attributed asset.
  ]

]
//#pagebreak()

#v(2pt)
#grid(columns: (1fr, 1fr), gutter: 0.22in,
  [
    #section[References]
    #source[1][Odegard, Gierka & Lyon, "Clarifying Structured Literacy: Moving the Conversation Forward," 2026.]
    #source[2][Mark Seidenberg, "About the Science in the Science of Reading," 2023.]
    #source[3][Mark Seidenberg, "Where Does the Science of Reading Go From Here?" Yale Child Study Center talk, Dec. 2023.]
    #source[4][Ed Jones, "Garbage Collecting in the Science of Reading," Jan. 20, 2024.]
    #source[5][National Board for Education Sciences, *2024 Annual Report*, recommendation for a new National Reading Panel.]
    #source[6][Ed Jones, "Give Reading Teachers Better Systems," Thomas B. Fordham Institute, 2025.]
    #source[7][Karen Vaites, "The Science of Reading Goes to Washington," Feb. 13, 2026; section "Imagining 'NRP The Sequel'."]
    #source[8][U.S. House Committee on Appropriations, FY 2027 Labor-HHS-Education report language directing NICHD and IES to reestablish the National Reading Panel, 2026.]
    #source[9][Douglas Carnine, "Stopping the Pendulum: Making Education a Research-Based Profession," Oct. 23, 2025.]
    #source[10][AEI, "From Reform to Results: Making Education a True Profession," Nov. 13, 2025.]
    #source[11][Douglas Carnine, "What Education Can Learn From Trusted Professions," May 7, 2026.]
    #source[12][G. Reid Lyon & Douglas Carnine, "The Unfinished Work of Professionalizing Reading Education," Jun. 28, 2026.]
    #source[13][Elizabeth Tipton & Nicole Patton-Terry, "We Need an 'Engineering of Reading': Why the 'Science of Reading' May Not Be Enough," *Mind, Brain, and Education* 20(3), 2026.]
    #source[14][The Reading League, *Curriculum Evaluation Guidelines*, Curriculum Navigation Reports, and Reading League Compass.]
    #source[15][Douglas Carnine, "60 Million Unnecessary Reading Failures — Shame on the System," Aug. 7, 2026.]
  ],
  [
    #v(7pt)
    #source[16][Reading Universe, WETA / Barksdale Reading Institute, launched 2023.]
    #source[17][Reading Rockets, WETA, national literacy resource and professional-learning site.]
    #source[18][Ohio Department of Education and Workforce, Science of Reading professional-development requirements and recurring refresher courses, 2026.]
    #source[19][Tennessee Department of Education, *Reading 360*, \$100M statewide literacy initiative launched 2021; training, coaching, implementation networks, free online SoR courses.]
    #source[20][Ohio Department of Education and Workforce, *Early Impacts of Ohio's Literacy Coaching Model: The Year 2 ReadOhio Coaching Report*, Nov. 2025.]
    #source[21][National Council on Teacher Quality, *Teacher Prep Review: Strengthening Elementary Reading Instruction*, Jun. 2023.]
    #source[22][National Council on Teacher Quality, *Teacher Prep Review: Decoding Progress in Reading Preparation*, Jun. 9, 2026.]
    #source[23][Knowledge Matters Campaign, Scientific Advisory Committee and research-to-practice resources.]
    #source[24][Johns Hopkins Institute for Education Policy, *ELA Knowledge Map™*.]
    #source[25][EdReports, v2.0/v2.1 ELA review tools and reports, 2025-26.]
    #source[26][Christopher Peak, "When schools buy new reading programs, they look to EdReports. But some of its reviews don't line up with science," APM Reports, Mar. 6, 2025.]
    #source[27][Anna Geiger, *Science of Reading Podcast Index*, Reach All Readers, actively maintained.]
    #source[28][Sean Morrisey, "Meet the Word Mapping Project, the new cult favorite vocabulary supplement," *The Curriculum Insight Project*, Feb. 27, 2026.]
    #source[29][AERDF, *Reading Reimagined*, "The False Divide: Why 'Learn to Read, Read to Learn' Fails Older Readers — and How to Fix It," 2026.]
    #source[30][Jones & Carnine, comments to "60 Million Unnecessary Reading Failures," 2026.]
    #source[31][Army Publishing Directorate, *Army Doctrine Publications (ADP) Index*, U.S. Army.]
  ]
)
