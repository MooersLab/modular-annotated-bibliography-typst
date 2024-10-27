![Version](https://img.shields.io/static/v1?label=modular-annotated-bibliography-typst&message=0.2&color=brightcolor)
[![License: MIT](https://img.shields.io/badge/License-MIT-blue.svg)](https://opensource.org/licenses/MIT)


# Template for making an enhanced and illustrated annotated bibliography with Typst using BibLaTeX

Annotated bibliographies are used to prepare review articles and for self-study in a new field.
The classic annotated bibliography could be enhanced with graphical objects to assist in the recall of the article content. 
Illustrations are worth a thousand words per image and aid in locating the desired entry for rereading.


<img width="1164" alt="Screenshot 2024-10-26 at 5 32 22 AM" src="https://github.com/user-attachments/assets/2df99895-ce1e-461e-b83d-3957b863dfa0">

## Quick start on the typst.app
Unlike the situation with Overleaf, it is not possible to upload into the *typst.app* a project as a zip file.
Until the day that I create a template project for the typst universe, you will have to copy the contents of each file into files within your project folder on typst.
Due to this labor, I kept this template to a minimum.

1. Download the mab.zip file (mab stands for modular annotated bibliography).
2. Unzip it.
3. Upload the files to a new project on the [typst.app](https://typst.app/).
4. Open the main.typ file. The PDF should appear. If not, refresh the browser window.

Note that the package imports are stored in the `template.typ` file, imported by the other typ files, including the bibNotes. This means that only the namespaces in the `template.typ` file have to be changed from `@preview` to `@local` when running the project locally. The files outside of the zipped folder have the `@local` namespace.
Also, the font in the `template.typ` file in the zip file is set to one that works online. 
The font in the loose `template.typ` is set to *Helvetica* for the use of local system fonts.

## Local install

1. Replace the `preview` namespace with the `local` namespace in the files in the zipped folder or download the lose files outside the zippd folder.
2. Install the following packages locally:
    - in-dexter
    - glossarium
    - wrap-it
3. Run `typst compile main.typ`. The PDF will appear. Alternatively, open `main.typ` in a text editor and run `tinymist` from the same directory in the terminal. The compiled file should appear in the default browser.

## Role of template.typ

This file contains settings that differ between the files for **typst.app** in the zip file and the loose files for local use.

- Differences in package namespaces.
- Differences in version numbers of the packages used.
- Differences in fonts available for use.


## The problem that this repo addresses
The current support for annotated bibliographies using LaTeX or org-mode is limited to supporting the automated insertion of a few sentences in a single paragraph.
The result is rather dull.
They depend upon the annotation in an `annote` or `annotation` field inside the bibliographic entry in a bibliographic file.
You have to go through extra measures to be able to introduce blank lines between paragraphs if you are using BibTeX. 
If you are using BibLaTeX, the situation is even worse.
You must use an empty display math macro to introduce a blank line between paragraphs.

## The solution
The workaround is to import the annotations from external files to evade mingling by the bibliography processing software.
The annotations are stored in one typst file per citation.
These files have the cite key as their file name.

<img width="715" alt="Screenshot 2024-10-26 at 5 43 23 AM" src="https://github.com/user-attachments/assets/0e9e6ab1-5ee2-4600-bcf9-5cc6ca78d613">

## Adding to the bibliography

Note: the zip file uses the `preview` namespace for use on the `typst.app`. The loose files in the repo use the `local` namespace for use with locally installed typst packages. 

1. Create a typ file for each entry and store it in the bibNotes folder. Include the following on the top line of each file: #import "../template.typ": *
2. Store associated image files in the images subfolder.
3. Inject the bibliographic entry in a heading by calling with its cite key.
4. Enjoy!

<img width="1110" alt="Screenshot 2024-10-26 at 5 42 34 AM" src="https://github.com/user-attachments/assets/52f38e75-f604-41ae-9e39-2edfb38fd8ee">

## Typst.app

The online web service, **typst.app**, provides live previews. 
This provides the instant gratification that so many crave.
This also accelerates debugging the source code.
The web service also provides easy access to other packages.
The experience of writing the annotated bibliography on the **typst.app** is more enjoyable than doing the same task with Overleaf.
Doing this task on either web service is more fun than doing it locally.

The files for a project can be downloaded in a zip file by clicking on the backup button.



### Downsides to Typst.app
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

Unlike the situation with Overleaf, it is not possible to upload into the *typst.app* a project as a zip file.
Until the day that I create a template project for the typst universe, you will have to copy the contents of each file into files within your project folder on typst.
Due to this labor, I kept this template to a minimum.

1. Start a new project on your online account.
2. Copy the contents of each file to a file of the same name on the typst app.

### Local install
After git cloning this Repository (or downloading the zip fil)e, copy the folder to your project folder and run the typst binary on the master file.

### Related repositories

[Glossary conversion](https://github.com/MooersLab/latex-gloassaries-to-typst-gloassarium)


## Update history

|Version      | Changes                                                                                                                                   | Date                 |
|:-----------|:-------------------------------------------------------------------------------------------------------------------------------------------|:---------------------|
| Version 0.1 | Added badges, funding, and update table.  Initial commit.                                                                                 | 2024 October 26      |
| Version 0.2 | Switched to using `template.typ` to import of packages.  Stored the preview variants in the zip file for use online in *typst.app*.       | 2024 October 27      |

## Sources of funding
## Sources of funding

- NIH: R01 CA242845
- NIH: R01 AI088011
- NIH: P30 CA225520 (PI: R. Mannel)
- NIH: P20 GM103640 and P30 GM145423 (PI: A. West)
