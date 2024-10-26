![Version](https://img.shields.io/static/v1?label=modular-annotated-bibliography-typst&message=0.1&color=brightcolor)
[![License: MIT](https://img.shields.io/badge/License-MIT-blue.svg)](https://opensource.org/licenses/MIT)


# Template for making an enhanced and illustrated annotated bibliography with Typst

Annotated bibliographies are used in the preparation of review articles and for the purpose of self-study in a new field.
The classic annotated bibliography is not enhanced with illustrations. 
Illustrations are worth a thousand words per image.
They can enhance the recall of the material in an article.

## The problem that this repo addresses
The current support for annotated bibliographies using LaTeX or org-mode are limited to supporting the automated insertion of a few sentences in a single paragraph.
The result is rather dull.
They depend upon the annotation being made in an annote or annotaton field inside of the bibliographic entry in a bibliographic file.
You have to go through extra measures to be able to introduce blank lines between paragraphs if you are using BibTeX. 
If you are using BibLaTeX, the situation is even worse.
You must use an empty display math macro to introduce a blank line between paragraphs.

## The solution
The workaround is to import the annotations from external files to evade mingling by the bibliography processing software.
The annotations are stored one typst file per citation.
These files have the cite key as their file name.

## Typst

The online web service, typst.app, provides live previews. 
This provides the instant gratification that so many crave.
This also accelerates debugging the source code.
It makes the experience of writing the annotated bibliography a little more enjoyable than doing the same task with Overleaf.

## Limitations

I do not know yet what the practical limit is in terms of the number of imported external files.


## Possbile alternatives
There are two other modular annotated bibliography repositories on this website that support making modular bibliographies using LaTeX.
From prior experience with importing about 370 external files into a single LaTeX document on Overleaf, I know that these LaTeX variants are up to the task of creating a large annotated bibliography.
That downside to using OverLeaf is that you have to click the compile button to have your edits deployed in the exported PDF whereas this happens automatically with the live previews provided by the typst.app web service.


## Installation

### On-line typst.app

Unlike the situation with Overleaf, it is not possible to upload into the typst.app a project as a zip file.
Until the day that I create a template project for the typst universe, you will have to copy the contents of each file into files within your project folder on typst.
Due to this labor, I have tried to keep this template to minimum.

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
