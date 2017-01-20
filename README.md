# Glab == Gitlab Browse

Let me know if this sounds familiar:

You installed [hub](https://github.com/github/hub) mainly for its killer `browse` command which opens the current branch in GitHub. You loved it because of how _easy_ it made your life.

Then you had to work on a Gitlab-hosted project...

Your fingers just wouldn't stop typing `hub browse` and you were constantly reminded of your own idiocy:

```sh
$ hub browse
->  git browse [-u] [[<USER>/]<REPOSITORY>|--] [SUBPAGE]

(a minute later)

$ hub browse
->  git browse [-u] [[<USER>/]<REPOSITORY>|--] [SUBPAGE]

(you go to sob quietly in the corner)
```

Meet Glab: a drop-in replacement for the `hub browse` command!

```sh
$ lab browse
->  (opens the current branch in Gitlab...oh sweet salvation!)
```

## Installation

Since I'm too lazy to turn this into a gem at the moment, you'll have to do the hard work yourself:

```sh
$ git clone git@github.com:jdwolk/glab.git
$ cd glab
$ cp ./lab.rb ~/some/directory/on/my/PATH/lab
```

Donezo. Let your fingers rejoice!

### Compatibility
Only works on mac OS X -- currently tested on El Capitan
