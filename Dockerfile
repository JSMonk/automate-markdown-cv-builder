FROM ubuntu:18.04

RUN apt update
RUN apt install -y git context make wget
RUN wget https://github.com/jgm/pandoc/releases/download/2.2.1/pandoc-2.2.1-1-amd64.deb && \
    dpkg -i pandoc-2.2.1-1-amd64.deb
RUN git clone https://github.com/mszep/pandoc_resume
WORKDIR pandoc_resume
COPY README.md markdown/resume.md
COPY styles.css styles/chmduquesne.css
COPY styles.tex styles/chmduquesne.tex
RUN make
CMD cp -R ./output/* /dist
