Fed up with latex and want to write a paper for an IEEE Conference? This template repository uses pandoc so that the Markdown content of `paper.md` is automatically converted in a IEEE conference compatible pdf.

You'll need to install the necessary tooling for it to work, or simply use a github action to produce the pdf. In that case, everything you'll be pushing on the master branch will trigger an action building the pdf, and the result will be attached as a new release for the repository.

# Quick edit/render with VS Code 

Install Recommanded VSCode extension to edit markdown IEEE template:

```
Name: Pandoc Citer
Id: notZaki.pandocciter
Description: Autocomplete bibtex citations for markdown/pandoc
Version: 0.9.2
Publisher: notZaki
VS Marketplace Link: https://marketplace.visualstudio.com/items?itemName=notZaki.pandocciter

Name: Markdown All in One
Id: yzhang.markdown-all-in-one
Description: All you need to write Markdown (keyboard shortcuts, table of contents, auto preview and more)
Version: 3.4.0
Publisher: Yu Zhang
VS Marketplace Link: https://marketplace.visualstudio.com/items?itemName=yzhang.markdown-all-in-one
```

# Build the pdf paper

Install a latex distribution, pandoc and makefile

```
sudo apt update
sudo apt install pandoc pandoc-citeproc texlive-full build-essential
```

Use the makefile:

```
make all
```

# GitHub Action

a github action is provided, and build automatically and publish a new release with what you push on the master branch. To use it, make sure to allow gitHub Action to write your repo

![](doc/githubaction.png)
