#!/bin/bash
#===============================================================================
#
#          FILE:  cookiecutters.sh
#
#         USAGE:  bash cookiecutter.sh
#
#   DESCRIPTION:  the script generates 5 Markdown files which must
#                 be contained in the project's root directory,
#                 together with several directories that organize
#                 the project's content.
#
#     ARGUMENTS:  cookiecutter.sh takes no command line arguments
#
#        AUTHOR:  Ying Dong
#
#       CREATED:  11/19/2017
#===============================================================================

touch CITATION.md
touch README.md
touch LICENSE.md
touch CONTRIBUTING.md
touch CONDUCT.md
mkdir data
mkdir doc
mkdir results
mkdir src
mkdir bin
mkdir from_joe
