---
jupytext:
  cell_metadata_filter: -all
  formats: md:myst
  text_representation:
    extension: .md
    format_name: myst
    format_version: 0.13
    jupytext_version: 1.11.5
kernelspec:
  display_name: Python 3
  language: python
  name: python3
---
# The AI ABCs

This Jupyter book is a high-level introduction to using machine learning (ML)
and artificial intelligence (AI) methods in scientific research. Its design has
been heavily inspired by [Software Carpentry](https://software-carpentry.org/),
a program run by [the Carpentries](https://carpentries.org/). Whereas Software
Cerpentry is a high-level introduction to basic programming tools, this course
is a high-level introduction to basic ML and AI tools.

Accordingly, this course is intended for readers who have programming
experience but who do not necessarilty have strong mathematics and statistics
backgrounds. (See the [prerequisites](/intro/prerequisites) page for more
information.) It attempts to provide students with intuition about how various
ML techniques work, how they can be used, and what their limitations are
without delving deeply into theory.


## What kind of Artificial Intelligence does this course cover?

AI can mean many things: large language models (LLMs) that can communicate like
humans, reasoning engines that can deductively prove theorems, and algorithms
that learn the structure of data, to name a few. The term "AI" is often
associated with [artificial general intelligence](
https://en.wikipedia.org/wiki/Artificial_general_intelligence), which refers to
an intelligence that excels at all cognitive domains a human typically excels
at. Large language models (LLMs), though not generally intelligent in the
manner of humans (as of when this course was written), are nonetheless somewhat
good at answering questions across a very broad set of domains. Other kinds of
AI tools are good at solving only a very narrow set of problems.

**This course focuses on a particular subset of AI that is useful for exploring
and understanding *structured numerical* data.** The "numerical" in "numerical
data" just means that the data are at least partly composed of numbers, usually
real numbers. Some machine learning algorithms in this course can be adapted
for use with "[categorical](https://en.wikipedia.org/wiki/Data_model)" data,
but these topics are largely out of scope for this course. Many datasets
include both numerical and categorical dimensions&mdash;for example, one might
measure both a child's reading speed (a numerical variable) and their
handedness (a categorical variable)&mdash;and this course will occasionally
discuss how to handle such variables in numerical algorithms.

The "structured" in "structured numerical data" means that the data have an
inherent [model](https://en.wikipedia.org/wiki/Data_model) of how their pieces
are related to each other. For example, if we measure the trajectory of a fly
over time by recording its $(x, y, z)$ position coordinates every millisecond
for 5 seconds, our data would be structured in multiple ways: the $x$, $y$, and
$z$ coordinates are orthogonal axes, and the measurements would be ordered in
time. If we choose two arbitrary pieces of the data, say the $x$ coordinate at
time 0 and the $y$ coordinate at time 1, we can say how they are related to
each other. This differs from "[unstructured data](
https://en.wikipedia.org/wiki/Unstructured_data)" in which there is no clear
relationship between any two pieces. For example, a corpus of text and a set of
JSON files can each contain rich and detailed data, but without knowing
something else about the text or files, we can't say how any two arbitrary
words or JSON entries are related to each other. If you are looking for
guidance on unstructured data, such as corpuses of text or collections of JSON
files, we suggest that you look into [Natural Language Processing
(NLP)](https://en.wikipedia.org/wiki/Natural_language_processing) and
[LLMs](https://en.wikipedia.org/wiki/Large_language_model).


## Table of Contents

```{tableofcontents}
```


## About

### Authors

Noah C. Benson &lt;[nben@uw.edu](mailto:nben@uw.edu)&gt; (Maintainer)  
eScience Institute  
University of Washington  


## Legal Information

### Copyright

Copyright (c) 2025 Noah C. Benson

### License

Unless otherwise stated, the text content of the AI ABCs is made available
under the [Creative Commons Attribution 4.0 International License](
https://creativecommons.org/licenses/by/4.0/legalcode). For a human-readable
version of the license, see
[here](https://creativecommons.org/licenses/by/4.0/).

Unless otherwise stated, images on this website are under copyright of the
original creator.

Unless otherwise stated, the software and documentation provided in the AI ABCs
[repository](https://github.com/noahbenson/AI-ABCs) are made available under
the [MIT license](https://opensource.org/licenses/mit-license.html).


