The Karelian morphology and tools
=================================

This directory contains source files for the Karelian language
morphology and dictionary. The data and implementation are licenced
under GNU GPLv3 licence also detailed in the LICENCE file of this
directory. The authors named in the AUTHORS file are available to grant
other licencing choices.

[![GitHub issues](https://img.shields.io/github/issues-raw/giellalt/lang-krl)](https://github.com/giellalt/lang-krl/issues)
[![Build Status](https://github.com/giellalt/lang-krl/workflows/Build%20Speller%20Archives%20and%20Bundles/badge.svg)](https://github.com/giellalt/lang-krl/actions)
[![License](https://img.shields.io/github/license/giellalt/template-lang-krl)](https://raw.githubusercontent.com/giellalt/lang-krl/develop/LICENSE)

Install proofing tools and [keyboards](https://github.com/giellalt/keyboard-krl)
for the Karelian language by using the [Divvun Installer](http://divvun.no)

Documentation can be found here:

-   <https://giellalt.uit.no/lang/kel/KarelianDocumentation.html>
    (analyser)
-   <https://giellalt.uit.no/index.html> (infrastructure)

Lexical data was taken from:

    KARJALAN KIELEN SANAKIRJA, XML-VERSIO
    (versio 1.0, julkaistu 18.8.2015)

    JULKAISIJA
    Kotimaisten kielten keskus

    JULKAISIJAN YHTEYSTIEDOT
    aineistot [at] kotus.fi
    http://www.kotus.fi

    AINEISTON SIJAINTI
    http://kaino.kotus.fi/kks/lataa/kksxml.zip

    LISENSSI
    Creative Commons Nimeä 4.0

Requirements
------------

In order to compile and use Karelian language morphology and
dictionaries, you need:

-   Xerox Finite-State Morphology tools, or
-   Helsinki Finite-State Technology library and tools, version 3.8 or
    newer, or
-   Foma finite-state tool

Optionally:

-   VislCG3 Constraint Grammar tools

Downloading
-----------

The Karelian language sources can be acquired using [giella SVN
repository](https://giellalt.uit.no/infra/anonymous-svn.html), from the
language specific directory, after the core has been downloaded and
initial setup has been performed.

Installation
------------

INSTALL describes the GNU build system in detail, but for most users the
usual:

```
 ./configure
 make
 (as root) make install
```

should result in a local installation and:

    (as root) make uninstall

in its uninstallation.

If you would rather install in e.g. your home directory (or aren\'t the
system administrator), you can tell ./configure:

    ./configure --prefix=$HOME

If you are checking out the development versions from SVN you must first
create and install the necessary autotools files from the host system,
and check that your environment is correctly set up. This is done by
doing:

> ./autogen.sh

It is common practice to keep [generated files out of version
control](http://www.gnu.org/software/automake/manual/automake.html#CVS).

VPATH builds
------------

If you want to keep the source code tree clean, a VPATH build is the
solution. The idea is to create a build dir somewhere outside of the
source code tree, and call [configure]{.title-ref} from there. Here is
one VPATH variant of the standard procedure:

```
 mkdir build && cd build
 ../configure
 make
 (as root) make install
```

This will keep all the generated files within the build/ dir, and keep
the src/ dir (mostly) free of generated files. If you are building from
the development version in SVN, you must run the ./autogen.sh script
BEFORE you take the steps above.

For further installation instruction refer to file `INSTALL`, which
contains the standard installation instructions for GNU autoconf based
software.
