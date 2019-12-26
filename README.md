---
title: Yet Another Pandoc CV Template
date: 2016-09-24
tags: ["pandoc"]
---

It is always nice when you come across good typography from LaTeX documents. Up until recently, the easiest way of dealing with LaTeX syntax was through the installation and use of [Lyx](https://www.lyx.org/). Fortunately, pandoc was created (it is ten years old now), making things a lot easier.


I've been using a custom CV template for some months, and finally I feel it is worth sharing to a broader audience. 

Here is how it looks:

![]( https://i.imgur.com/b7Jh8Mq.png )

The dependencies for it are:

1. A working git installation;
2. Fira Mono & Minion Pro fonts installed in the system;
3. a working pandoc and xelatex installation;
4. and the installation of my repo (see below).


Install my repository by cloning it:

```bash
git clone https://github.com/lf-araujo/yapcvt
cd yapcvt
```

Now you will find a cv.md file. It starts with a yaml code block (the part between the three dashes), where you can send the desired options to pandoc. You don't have to change those, as I let them as near as possible to [Butterick's Practical Typography](http://practicaltypography.com/) recommendations.

Note that the items are laid out in a list of descriptions, with the following syntax:

```markdown
2010-2013

:     State University of Campinas, UNICAMP, Campinas, Brazil.\newline Master's in Medical Sciences. Title: Causes and Causal Models in Psychiatry, Year of degree: 2013. Supervisor: Prof. X
```

Edit these accordingly and you're good to go.

The last step is to make the pdf itself, it involves the use of a Makefile. In the same directory, run ```make``` and the pdf should be rendered and opened in the proper application. If you are using MacOS, you should edit the last line of the Makefile to read ```open``` instead of ```xdg-open```, as I don't know whether Apple follows the free desktop standards.

## Acknowledgements

This cv is based on a custom version that I used up until recently, but now with strong influence from [Kieran Healy's](https://kieranhealy.org/vita.pdf) vita and from [Butterick's Practical Typography](http://practicaltypography.com/) pointers to a good typographical design.
