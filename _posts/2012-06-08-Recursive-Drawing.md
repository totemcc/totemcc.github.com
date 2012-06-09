---
layout: post
title: Recursive Drawing
---

[Recursive Drawing](http://recursivedrawing.com/) is an experiment in spatial user interfaces for programming. It was the main part of my 2012 ITP thesis project [Alternative Programming Interfaces for Alternative Programmers](https://vimeo.com/41968528).

You can try [Recursive Drawing](http://recursivedrawing.com/) in the browser.

<iframe src="http://player.vimeo.com/video/41822151?title=0&amp;byline=0&amp;portrait=0" width="540" height="304" frameborder="0" webkitAllowFullScreen mozallowfullscreen allowFullScreen></iframe>

## Origins

Recursive Drawing is a reimplementation of the textual programming language CFDG (a.k.a. [Context Free](http://www.contextfreeart.org/)) by Chris Coyne. CFDG is a declarative approach to producing algorithmic pictures. Contrast the declarative approach with the [imperative approach of Processing](http://processing.org/learning/topics/tree.html) or Logo.

It is further inspired by Bret Victor's challenge to create [*directly manipulable* interfaces for programming dynamic pictures](http://worrydream.com/#!/DynamicPicturesMotivation). Recursive Drawing is a directly manipulable version of CFDG.

## Audience

Recursive Drawing is intended as a demonstration of an alternative approach to programming for two audiences: creative coders and programming language designers.

### Creative Coders

Creative coders are artists, designers, and other creative explorers who use computer programming as a means to realize their work. For historical reasons, the most popular programming tools in this community tend to be low-level, imperative, C-like languages (e.g. Processing, openFrameworks, Arduino).

I believe that these tools no longer serve this community well for many of the types of projects that they work on. Imperative programming mires the artist in implementation details, drawing focus away from the work itself. This complaint applies to traditional programming as well but is doubly bad for artists. While traditional programmers often work towards a *spec*, artists generally work towards feelings and intuitions. It is therefore essential that they have a programming tool that enables them to rapidly test out ideas.

### Programming Language Designers

There are a lot of great ideas in the programming language design community that do not gain traction and cannot evolve because they target traditional programmers. By targeting traditional programming, it is very difficult to avoid making merely incremental improvements on the art.

Revolutionary new ways to think about computing have historically targeted new groups of programmers. Engelbart's NLS was designed for anybody who worked with information. Smalltalk was designed for children. Hypercard was designed for "end users".

We are witnessing the emergence of a new generation of programmers--"creative coders" who integrate programming into broader cultural visions. This provides an opportunity for programming language designers to radically reshape the field.

## Future

For me, Recursive Drawing shows that there are promising avenues to explore in spatial interfaces for rich human-computer collaboration. I will focus on two main user interface design problems in the near-term future.

The first is interfaces for creating richer spatial relationships between shapes. I plan to explore this problem by reimplementing Ivan Sutherland's [Sketchpad](http://www.cl.cam.ac.uk/techreports/UCAM-CL-TR-574.pdf) (1963) using modern interface conventions and the affordances of present technology.

The second is working with other types of spaces (higher-dimensional, non-Euclidean, alternative topologies) and importantly working with maps between spaces. A motivating example might be, how would one design the color features of Context Free in an elegant, directly manipulable way? Another promising experiment would be to create a directly manipulable implementation of a shader language like Core Image or OpenGL. These shader languages essentially specify transformations between spaces (including color space).

## Resources

1. I kept a [Tumblr journal of research](http://collidingcontexts.tumblr.com/) as I worked on my thesis. It's full of interesting links.
2. Here's [the first proof of concept](http://electronicwhisper.github.com/toys/1/) of Recursive Drawing. It showed that an interface for recursive manipulation would *feel* good. Here's [the second](http://electronicwhisper.github.com/toys/2/). I emphasized the use of arrows to orient the nested coordinate systems until I realized that this was a representation exposure.
3. High level textual implementations of shaders include Conal Elliott's [Pan](http://conal.net/Pan/) and Sean McDirmid's [Bling](http://bling.codeplex.com/). See also [this discussion](http://lambda-the-ultimate.org/node/4326) on LtU.
