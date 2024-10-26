#set page(width: 8.5in, height: 11in, margin: (x: 0.5in, y: 0.5in),)
#set text(11pt)
#set text(font: "Noto Sans Khmer")

#let running = [Illustrated Bibliographies #datetime.today().display()]
#let title = [Illustrated Bibliographies]
#align(center, text(17pt)[
     #linebreak()
     #linebreak()
      #linebreak()
      #linebreak()
      #linebreak()
       #linebreak()
       #linebreak()
       #linebreak()
  *#title*
])


// Set the title use for reuse in the running title and the main title page.

#let firstauthor = [Graduate Student]
#let secondauthor = [Senior Collaborator]
#let thirdauthor = [Staff Scientist]
#let seniorauthor = [Senior author]

#let affil1 = [Department of Biochemistry and Physiology, University of Oklahoma Health Sciences Center, Oklahoma City, Oklahoma, United States 73104]
#let affil2 = [Stephenson Cancer Center, University of Oklahoma Health Sciences Center, Oklahoma City, Oklahoma, United States 73104]
#let affil3 = [Laboratory of Biomolecular Structure and Function, University of Oklahoma Health Sciences Center, Oklahoma City, Oklahoma, United States 73104]


#set footnote(numbering: "*")
#align(center, text(11pt)[
   #linebreak()
    #linebreak()
    #linebreak()
  #firstauthor#super[1], #secondauthor#super[2], #thirdauthor#super[3], and #seniorauthor#super[1,2,3]#footnote[Corresponding author: blaine-mooers at ouhsc.edu, phone: 405-271-8300, FAX: 405-271-????]
  #linebreak()
  #linebreak()
  #linebreak()
  #super[1]#affil1
    #linebreak()
        #linebreak()
  #super[2]#affil2
    #linebreak()
        #linebreak()
  #super[3]#affil3
   #linebreak()
    #linebreak()
  #datetime.today().display()
])


*Keywords:* self-study, typesetting, scientific writing, reproducible research, text editing, version control

#pagebreak()

#import "@preview/in-dexter:0.5.3": *
#import "@preview/glossarium:0.5.0": make-glossary, register-glossary, print-glossary, gls, glspl
#show: make-glossary
#import "glossary.typ": entry-list
#register-glossary(entry-list)


#set page(
     header:[ Student, ..., and Mooers #h(1fr) #running],
  numbering: "1 / 1",
  number-align: right,
)


#outline(
    title: [Table of Contents],
    depth: 3,
    indent: 2em
)



// Requires typst  version 0.12.0 for line numbering.
#set par.line(numbering: "1")


#set par(justify: true)

// Your document body
= Annnotated, illustrated, hyperlinked

=== #cite(label("Mooers2020ShortcutsForFasterImageCreationInPyMOL"), form: "full")
#include "./bibNotes/Mooers2020ShortcutsForFasterImageCreationInPyMOL.typ"

    
=== #cite(label("Mooers2021TemplatesForWritingPyMOLScripts"), form: "full")
#include "./bibNotes/Mooers2021TemplatesForWritingPyMOLScripts.typ"



This is the first use of this acronym #gls("kuleuven"). 
This is the second use of this term #gls("kuleuven"). 
We are getting the shortened name.

#pagebreak()
= Back matter

#show link: set text(fill: blue.darken(60%))
#print-glossary(
 entry-list
)

    

#set par(leading: 0.5em, justify: false)
#bibliography("mabib0573.bib",
                title: "References Cited",
                style: "cell")

                
#columns(3)[
  #make-index(title: [Index], outlined: true, use-page-counter: true)
]
