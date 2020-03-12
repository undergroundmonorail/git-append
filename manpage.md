% GIT-APPEND(1) Version 1.0

NAME
====

**git append** - add current changes to the most recent commit

SYNOPSIS
========

**git append** [-h|--help]

DESCRIPTION
===========

Adds any uncommitted changes to tracked files in the current git repository to the most recent commit. Doesn't add untracked files, doesn't push.

Equivalent to `git commit --amend -am "$(git log -1 --pretty=%B)"`

OPTIONS
=======

-h, --help

: Prints usage information
