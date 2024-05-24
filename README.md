Fed up with latex and want to write a paper for an IEEE or Springer format Conference? This template repository uses pandoc so that the Markdown content of `paper.md` is automatically converted in a IEEE or Springer conference compatible pdf.

You'll need to install the necessary tooling for it to work, or simply use a github action to produce the pdf. In that case whenever a new tag is pushed, pandoc will produce the PDF and attach it to the new release corresponding to the new tag.

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

# choose IEEE conference or Springer LNCS Conference procedings

```
make ieee 
```
or
```
make springer
```

run this to switch template. You need to do it once before generating the pdf

# Build the pdf paper

Install a latex distribution, pandoc and makefile

```
sudo apt update
sudo apt install pandoc pandoc-citeproc texlive-full build-essential
```

Use the makefile:

```
make pdf
```

# GitHub Action

a github action is provided, and build automatically and publish a new release with every new tag. To use it, make sure to allow gitHub Action to write your repo

![](doc/githubaction.png)
