![Version](https://img.shields.io/static/v1?label=modular-annotated-bibliography-typst&message=0.1&color=brightcolor)
[![License: MIT](https://img.shields.io/badge/License-MIT-blue.svg)](https://opensource.org/licenses/MIT)


# Template for making an enhanced and illustrated annotated bibliography with Typst

Annotated bibliographies are used to prepare review articles and for self-study in a new field.
The classic annotated bibliography could be enhanced with graphical objects to assist in the recall of the article content. 
Illustrations are worth a thousand words per image and aid in locating the desired entry for rereading.


<img width="1164" alt="Screenshot 2024-10-26 at 5 32 22 AM" src="https://github.com/user-attachments/assets/2df99895-ce1e-461e-b83d-3957b863dfa0">


## The problem that this repo addresses
The current support for annotated bibliographies using LaTeX or org-mode is limited to supporting the automated insertion of a few sentences in a single paragraph.
The result is rather dull.
They depend upon the annotation being made in an `annote` or `annotation` field inside the bibliographic entry in a bibliographic file.
You have to go through extra measures to be able to introduce blank lines between paragraphs if you are using BibTeX. 
If you are using BibLaTeX, the situation is even worse.
You must use an empty display math macro to introduce a blank line between paragraphs.

## The solution
The workaround is to import the annotations from external files to evade mingling by the bibliography processing software.
The annotations are stored in one typst file per citation.
These files have the cite key as their file name.

## Typst

The online web service, **typst.app**, provides live previews. 
This provides the instant gratification that so many crave.
This also accelerates debugging the source code.
The web service also provides easy access to other packages.
The experience of writing the annotated bibliography on Typst is more enjoyable than doing the same task with Overleaf.
Doing this task on either web service is more fun than doing it locally.



### Downsides to Typst
- Poor support for downloading your project from the **typst.app**. You can only download the PDF of your project with a single click of the button.
- The supported fonts on the webservice differ from locally available fonts.
- No strong support from sourcing files outside of the current project.
- The manual installation of these packages locally is convoluted; a package manager for typst packages is needed.

## Features

- Modular annotations that can be reused in related projects. Unfortunately, typst has weak support for file paths. The annotations must reside in a sub-folder of the current project. You could store these in a private GitHub repository and then pull the file to other projects for reuse.
  - Support for embedding images and tables with captions in the figure environment.
  - Support for type set equations.
  - Support for including code listings.
  - An index.
- A list of acronyms.
- A glossary.
- A bibliography that includes entries that are outside the annotated bibliography.
- Table of contents with hyperlinks to accelerate navigation.
- Header with running title and page numbers in X of N pages to ease reassembly of printed version when mixed with other printouts while traveling.
- Uses BibLaTeX. If you have BibTeX entries, you need to delete the *annote* fields. No further changes should be required.

<img width="1190" alt="toc" src="https://github.com/user-attachments/assets/16402c07-84c7-4fff-854f-758e4bada18c">

## Limitations

The practical limit to the number of imported external files is unknown.


## Possbile alternatives
This website has other repositories for templates to make modular annotated bibliographies. 
They use LaTeX.
From prior experience importing about 370 external files into a single LaTeX document on Overleaf, I know these LaTeX variants can create an extensive modular and illustrated annotated bibliography.
The downside to OverLeaf is that you must click the **compile** button to have your edits deployed in the exported PDF, which happens automatically with the live previews provided by the typst.app web service.


## Installation

### On-line typst.app

Unlike the situation with Overleaf, it is not possible to upload into the typst.app a project as a zip file.
Until the day that I create a template project for the typst universe, you will have to copy the contents of each file into files within your project folder on typst.
Due to this labor, I kept this template to a minimum.

1. Start a new project on your online account.
2. Copy the contents of each file to a file of the same name on the typst app.

### Local install
After git cloning this Repository, copy the folder to your project folder and run the typst binary on the master file.


## Update history

|Version      | Changes                                                                                                                                    | Date                 |
|:-----------|:-------------------------------------------------------------------------------------------------------------------------------------------|:---------------------|
| Version 0.1 |   Added badges, funding, and update table.  Initial commit.                                                                                | 2024 October 26      |

## Sources of funding

- NIH: R01 CA242845
- NIH: R01 AI088011
- NIH: P30 CA225520 (PI: R. Mannel)
- NIH: P20 GM103640 and P30 GM145423 (PI: A. West)
