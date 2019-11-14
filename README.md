tm-jira-cli
=============

A CLI for Tastemade that extends Git and Jira CLIs.

Forked from [localmed/git-jira-flow](https://github.com/localmed/git-jira-flow)

Installation
------------
### Prerequesites
This CLI requires an installation of the Atlassian CLI. [Download here](https://bobswift.atlassian.net/wiki/spaces/ACLI/pages/16875586/Downloads)

### Manual Installation

``` bash
$ git clone git@github.com:reneric/tm-jira-cli.git
$ cd tm-jira-cli
$ sudo make install
```

By default, tm-jira-cli will be installed in /usr/local. To change the prefix where tm-jira-cli will be installed, simply specify it explicitly, using:

``` bash
$ sudo make prefix=$HOME install
```

Setup
-----

#### tm-jira-cli requires the Jira API configuration to be set in your .gitconfig:

```
[jira]
  server = <Jira URL> (https://{{name}}.atlassian.net)
  user = <your username> (email address)

[jira]
  cli = <path to Jira CLI> (path of your atlassian CLI installation)
```

And optionally:

```
[jirabranch "development"]
  branch = alpha
  
[jirabranch "master"]
  branch = master
```

Usage
-----
#### You will need an atlassian API token. You can create one [here](https://id.atlassian.com/manage/api-tokens)

*Branch name (-b) is optional. If not set, it will create the branch name using the task's name.*

*For a hotfix (git-flow) add the `-H` flag*
``` bash
$ tm task:start [<issuekey>] [-b <branchname>] [-H]
$ tm task:finish [<issuekey>] [-H]
$ tm task:help
```
