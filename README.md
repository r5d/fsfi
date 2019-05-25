# FSF India Website

The site is mostly written in plain HTML with server side includes
(SSI). It uses The [Bulma][bulma] CSS framework for styling.

News and article sections are written in markdown. The `bin/html`
script generates the HTML and the `bin/feed` script generates the Atom
feeds for these sections.

The POSTs from 'contact' and 'volunteer' forms are handled by a PHP
script. At the moment it simply forwards the submission to an email
address.

[bulma]: https://bulma.io

## Tools

These tools are needed to build the site:

  - make
  - [sassc][sassc]
  - python3
  - perl (`bin/markdown` needs it :|)

[sassc]: https://github.com/sass/sassc

## Building

Just do:

    make
