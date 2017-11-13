# textests

## Description

This is more or less a test project to learn more about useful workflows when collaborating on GitHub to create content. Additionally, Travis CI is used as a continuous integration service - specifically to test merging of pull requests as well as to automatically compile the `.tex` files and deploy the results to the repository's releases every time a tagged commit is being pushed to a branch. For this, the `.travis.xml` configuration file contains a script section which makes use of `git` to commit the tag and the Travis CI CLI tool `travis` to cancel the needless build. In addition to connecting Travis CI with the repository on GitHub, a token has been stored in the environment variable `$GITHUB_TOKEN`.

## About this branch

This is the `master` branch. It doesn't contain true content but exemplary `.tex` files only.

## Instructions

To compile a subproject locally, clone the desired branch to your computer and run `make`. Take a look at the `Makefile` for further options. However, it should absolutely be possible - and is basically intended for this project - to solely work online and let Travis CI do the compiling.

If you add `[ci autotag]` somewhere in a commit message, the immediately following build for this commit will be canceled as well as a tag will be auto-generated, which triggers a new build and the deployment of a new release instead. To skip tests for a commit altogether, add `[ci skip]`.

To create a new subproject, edit this `README.md` file to modify the **About this branch** section above and push the commit for these changes to a new branch. Consequently, all future commits concerning this subproject will go there as well. Collaborators can edit the files of the particular branch for this subproject, create new branches for their commits and eventually submit and merge pull requests. Modifications to the `master` branch can be transferred to a subproject's branch via pull request as well.
