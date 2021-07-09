# Git Tutorial

This repository contains some best practices about the git.

This tutorial doesn't want to become an thesis or a beginner guide. It's a simple tutorial to a specific way of working with git. I don't say it's the best way of handling the git. But it's working :)

## Basics

### What is the git?

It's a distributed version control system. Further reading in the [Wikipedia][1].

> I’m an egotistical bastard, and I name all my projects after myself. First Linux, now git. - by Linus Torvalds

If you want to learn more before you go further, I reocmend you the [Git Handbook][2].

### Commits

To get the official definition of commit and branch read the [Git Handbook][2] (`What is Git?`/`Snapshots, Not Differences` and `Git Branching`/`Branches in a Nutshell`).

The commit contains:

* a pointer to is a snapshot of your changes in the repository
* Information about the author
  * Name
  * Email address
* Commit message
* pointer(s) to the previous commit

There is more way to create a commit:

* Add files modification to staging area by `git add`.

If the file is already tracked by git you can use the `git add --patch` or `git add -p` option. This optin allows to select the modification hunk by hunk to create a meaningful commit.

During the patching the options are:

```text
y - stage this hunk
n - do not stage this hunk
q - quit; do not stage this hunk or any of the remaining ones
a - stage this hunk and all later hunks in the file
d - do not stage this hunk or any of the later hunks in the file
g - select a hunk to go to
/ - search for a hunk matching the given regex
j - leave this hunk undecided, see next undecided hunk
J - leave this hunk undecided, see next hunk
k - leave this hunk undecided, see previous undecided hunk
K - leave this hunk undecided, see previous hunk
s - split the current hunk into smaller hunks
e - manually edit the current hunk
? - print help
```

The `git commit src/libA/__init__.py` allows to add files directly to the commit. The same `--patch` option can be used for git commit too.

If you don't use the `git add`, than to get a full control of your committed content you should use the following command:

```bash
git commit --patch --verbose
```

It's allows you to use the similar patch function like `git add` and it shows the committed blob
example:

```text

# Please enter the commit message for your changes. Lines starting
# with '#' will be ignored, and an empty message aborts the commit.
#
# On branch basics
# Your branch is up to date with 'origin/basics'.
#
# Changes to be committed:
#       modified:   README.md
#
# Changes not staged for commit:
#       modified:   README.md
#
# Untracked files:
#       .vscode/
#
# ------------------------ >8 ------------------------
# Do not modify or remove the line above.
# Everything below it will be ignored.
diff --git a/README.md b/README.md
index be419b9..8225649 100644
--- a/README.md
+++ b/README.md
@@ -18,3 +18,11 @@ If you want to learn more before you go further, I reocmend you the [Git Handboo

 [1]: <https://en.wikipedia.org/wiki/Git> (Wiki page of Git)
 [2]: <https://git-scm.com/book/en/v2> (Git Handbook)
+[3]: <https://github.com/git/git> (The git repository of git)
+
+## Useful links
+
+* [Git aliases NSFW](https://github.com/jakubnabrdalik/gitkurwa)
+* [Your Code as a Crime Scene - Adam Tornhill](https://pragprog.com/titles/atcrime/your-code-as-a-crime-scene/)
+  * [Goto conference video](https://www.youtube.com/watch?v=TfZmuS01CNs)
+* [Software Design X-Rays - Adam Tornhill](https://pragprog.com/titles/atevol/software-design-x-rays/)
```

### Branches

The branch is just a lightweight pointer to a commit.

* Delete unmerged branch

  ```bash
  git branch -D my-unmerged-branch
  ```

* Push a local branch into a remote without remote branch

  ```bash
  git push --set-upstream origin basics
  ```

* Remove untracked upstream branches:

  ```bash
  git fetch --prune
  ```

* Delete  remote branch:

  ```bash
  git push <remote(origin)> --delete <branch>
  ```

### Tags

This functionality is mark an important point of the history (for example a release).

```bash
git tag my-greatest-product-version-1.0.0.1
```

Share all `tag`s.

```bash
git push origin --tags
```

Or just one `tag`

```bash
git push origin v1.5
```

Remove untracked tags

```bash
git fetch --prune-tags
```

### Let's Pick Some Cherry

The `git cherry-pick` applies changes which is alerady exist somewher on your repository. It is useful when you are using a release branches and You don't want to mess it up with merges from the master.

For example you got a master and two release branches. On the first release branch you fix some problem in the `F1` commit. Let's `cherry-pick` it back to the master as `F1'`. Then another release is made. Call it `R2`. This `R2` contains the `F1'` fix but another bug was found by the customuer. So you fix it and `charry-pick` it back to the master.

The visual example of the story:

```text
A-B-C-F1'-D-E-F2' master
  \       \
   \       \
    \       R2-F2'
     R1-F1'
```

Exampe of cherry-pick:

* Sign-off the cherry-picked commit. The sing off is unnecessary, but it makes the history cleaner.

  ```bash
  git cherry-pick --sing-off <commit-id>
  ```

* Cherry-pick a range of commit the range start is an excluded commit, the range end is included commit. The begin and the end can be commit hash, tag or branch name

```bash
git cherry-pick <from[excluded]>..<to[included]>
```

* A complex example: Apply all changes which are affected a specific file

```bash
git rev-list --reverse <from>..<to> -- FILE | git cherry-pcik --stdin
```

#### Example of Cherry-pick

There is a [bash file](examples/git-cherrypick-example.sh) to generate a repository for practicing cherry-picking

[//]: # (References)

[1]: <https://en.wikipedia.org/wiki/Git> (Wiki page of Git)
[2]: <https://git-scm.com/book/en/v2> (Git Handbook)
