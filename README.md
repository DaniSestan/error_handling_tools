# Error Handling Tools

## Table of contents

1. Project description
2. Project setup
3. Contributing guidelines
4. Project documentation
5. Links to support resources
6. Terms of use

## Project description

### What kind of software is this?

This repository is a collection of different scripts that track, parse, and log errors.

__________________

### Who can use this app?

Anyone running through common errors from the terminal/command-line

__________________

### How is the project is organized?

The project is organized with a 'module' specific to each type of error handling.

It's not limited to any specific programming language.

Information about pre-requisites or specific language requirements are defined for each 'module' in the README sections below.

### Project 'modules'

#### trap_error_logs

This module parses the data from any errors output from a bash program, and logs the data in a JSON file.

```
[
  {
    "log_index": "1",
    "timestamp_utc": "2026-01-07 14:02:16.413",
    "timestamp_local": "2026-01-07 14:02:16.415 CET",
    "user": "root",
    "command": "ls /foo",
    "error": "ls: cannot access '/foo': No such file or directory",
    "exit_code": "0"
  },
  {
    "log_index": "2",
    "timestamp_utc": "2026-01-07 14:02:16.430",
    "timestamp_local": "2026-01-07 14:02:16.432 CET",
    "user": "root",
    "command": "ls /foo/bar",
    "error": "ls: cannot access '/foo/bar': No such file or directory",
    "exit_code": "0"
  },
  {
    "log_index": "3",
    "timestamp_utc": "2026-01-07 14:02:16.448",
    "timestamp_local": "2026-01-07 14:02:16.450 CET",
    "user": "root",
    "command": "ls /foo/bar/baz",
    "error": "ls: cannot access '/foo/bar/baz': No such file or directory",
    "exit_code": "0"
  }
]
```

###### Pre-requisites

Before using {Project name}, install necessary pkgs:

* [jq](https://jqlang.org/download/)

###### Language requirements/dependencies

* Bash scripting language

###### Running the script

`cd` into the cloned repository, and create a copy of the trap_error_logs folder under your destination project's root dir.
```
cd error_handling_tools/trap_error_logs
trap_error_logs_filepath=$(pwd)
cp $trap_error_logs_filepath <DEST_PROJECT_ROOT>
```

Append the following vars to the .env file:
```
cd <DEST_PROJECT_ROOT>/trap_error_logs
local_trap_error_logs_filepath=$(pwd)
{
  echo "TRAP_ERROR_LOGS_MAIN_EXEC=$local_trap_error_logs_filepath/main.sh"
  echo "TRAP_ERROR_LOGS_FILEPATH=$local_trap_error_logs_filepath/error_logs.json"
  echo "BASH_ERROR_LOGS_FILEPATH=$local_trap_error_logs_filepath/bash_errors.log"
} >> .env
```

# TODO: print the commands to init error logging within any project

### Requirements

GitHub will automatically not push any tokens.

However, to commit any changes the .gitignore file must include any files that contain credentials.

If the Markdown Changelog Generator is used, it needs to include  'changelog_generator.toml' because it lists your GitHub repo's PAT (Personal Access Token).

### Recommendations

* When working through a smaller project such as a program or a software application, a Changelog is recommended.

Changelog entries typically follow a basic format that includes information about the code that was added to enhance a project, removed for any purpose, and modified to resolve errors.

Changelog entries are entered in the CHANGELOG file once code is committed to the main branch:

### [VERSION #] - [TIMESTAMP]

#### [ADDED || REMOVED || FIXED]

\<DESCRIPTION\>

___

### Version Control Process
I. **Create a Feature Branch**
Any code updates for a version change -- [Major].[Minor].[Patch] -- should be on a separate branch, referred to as a 'feature' branch.

Once work on the branch is completed, a pull-request can be created to merge the branch into `dev`, a staging/pre-release branch, where those changes are tested.

Once the staging branch is tested, stable code can be merged into `main` a production/release branch.

________________
##### Maintaining repos

###### Branch Naming Conventions

`<VERSION-RELEASE-#>/<FEATURE_NAME>/<CONTRIBUTOR>`

- `<VERSION-RELEASE-#>`: Refer to [SemVer](https://semver.org/) for details

- `<FEATURE_NAME>`: Descriptive title for the feature

- `<CONTRIBUTOR>`: GitHub account name, e.g., https://github.com/<NAME>

IV. **Documenting changes**

Maintaining a CHANGELOG file is always recommended for a quick overview of how the project is progressing.
1. Checkout main locally.
2. From a terminal session, run the commands to use the GitHub ChangeLog Generator.
3. Commit the CHANGELOG file to the remote branch.

`changelog-generator-md`

## Project documentation

### Standard project docs are located in the `{PROJECT_ROOT}` folder.

- README
- LICENSE
- CHANGELOG
    - Refer to the Project dependencies section of the README for more information on generating a CHANGELOG file

## Links

* [<LINK>](<URL>): <LINK_DESC>
* [...]

## Terms of use

Error Handling Tools is licensed under [MIT](https://commons.wikimedia.org/wiki/Template:X11)