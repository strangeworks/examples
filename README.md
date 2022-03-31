# Strangeworks Examples Repository

**NOTE: THESE EXAMPLES ARE CURRENTLY IN PRE-RELEASE AND SUBJECT TO CHANGE WITHOUT WARNING**

A collection of example projects that can be run utilizing the Strangeworks SDK and extensions.

## Index

### Examples

Here are some example notebooks that will get you started using the strangeworks platform.

#### [introduction.ipynb](examples/introduction.ipynb)
#### [strangeworks.ipynb](examples/strangeworks.ipynb)
#### [ibmq-example.ipynb](examples/ibmq-example.ipynb)
#### [aws-example.ipynb](examples/aws-example.ipynb)


## Merging and diffing notebooks

Use `nbdime` to get pretty notebooks diffs. Here is a workflow to get pretty diffs:

Setup:
```bash
pipx install nbdime
pipx inject nbdime jupyter
nbdime config-git --enable --global
```

Find commits to diff:
```bash
$ git log --oneline
0ebff7d (HEAD -> feature/clean-test) update intro
fcfb096 (origin/main, origin/HEAD, main) Add rigetti examples in (#4)
```

Run `nbdiff-web` on commits
```bash
$ nbdiff-web fcfb096 0ebff7d examples/introduction.ipynb
[I nbdimeserver:422] Listening on 127.0.0.1, port 53028
[I webutil:29] URL: http://127.0.0.1:53028/difftool
```

Oneliner for current commit against main
```bash
nbdiff-web $(git rev-parse main) $(git rev-parse HEAD) examples/introduction.ipynb
```

Someday maybe automate building a diff and displaying it
