# automate-markdown-cv-builder

The repository helps with storing versions of your CV and compiling it from markdown to other formats (html, docx, pdf, rtf, tex, tuc).

## Setting up

1. Install [Docker](https://docs.docker.com/get-docker/).
2. `git clone https://github.com/JSMonk/automate-markdown-cv-builder.git`
3. `cd automate-markdown-cv-builder`
4. `cp pre-commit ./.git/hooks/pre-commit`
5. Write your CV inside `README.md`.
6. You can build it manualy by `sh ./pre-commit` or only commit your changes and compiled files will be added to the commit.
