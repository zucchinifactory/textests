# textests

## About this branch

The branch currently being viewed is the `master` branch. It contains the basic `.travis.xml` configuration and is used as a template for creating more complex subprojects with other branches.

## Project description

This is more or less a test project to learn more about useful workflows when collaborating on GitHub to create content. Additionally, Travis CI is used as a continuous integration service - specifically, to test merging of pull requests as well as to automatically compile the `.tex` files and to deploy the results to the repository's releases on GitHub every time a commit is being pushed to a branch. For this, the `.travis.xml` configuration file contains a script section which makes use of `git` to commit the tag, the GitHub CLI tool `hub` to deploy the release and the Travis CI CLI tool `travis` to cancel any needless builds.

## Usage instructions

Just edit the file you want to change and commit your changes either directly to the branch (if you have permission to do so) or create a new branch and subsequently a new pull request. Travis CI will automatically build, test and compile a new release and deploy it to GitHub.

To compile a subproject locally, clone (with `git clone`) or download (and unzip) the desired branch to your computer and run `make`. Take a look at the `Makefile` for further options. However, it should absolutely be possible - and is basically intended for this project - to solely work online and let Travis CI do the compiling.

To create a new subproject, edit this `README.md` file to modify the **About this branch** section above and push the commit for these changes to a new branch. Consequently, all future commits concerning this subproject will go there as well. Collaborators can edit the files of the particular branch for this subproject, create new branches for their commits and eventually submit and merge pull requests. Modifications to the `master` branch (like updates to the `.travis.xml` configuration) can be transferred to a subproject's branch via pull request as well.

## Installation instructions

Read the following instructions if you want to use this project on your GitHub account with your own `.tex` files.

1. Fork this repository to your GitHub account.
2. Generate a personal access token in your GitHub account settings.
3. Register with Travis CI, if you don't already have an account there.
4. Add a new variable `GITHUB_TOKEN` to the Travis CI environment variables for the respository and set the value to the previously generated GitHub token. This is a security-critical step, so it is important that its options are set to not display the value in build logs - otherwise everyone can see it and use it to access your GitHub account.
5. At the Travis CI dashboard, enable building for your forked respository.
6. Make a dummy change to a `.tex` file too trigger a build.
7. Take a look at the logs to make sure everything worked as intended. Also, you should see a fresh release on GitHub containing the changes you made.
