The ideas in this paper were explored during my time as a Masters' student at New York University's Interactive Telecommunications Program (ITP). ITP is a multidisciplinary program which is part of NYU's art school but features a strong technology focus. Students come from diverse backgrounds: theater, sociology, law, philosophy, biology, industrial design, etc. Many enter the program with no prior computer programming experience, though they all leave with some.

Prior to ITP, I had professionally explored concepts from the academic programming languages community such as functional programming, functional reactive programming, and actor-based concurrency. Many of these concepts make programming simpler, yet by and large they are rejected by the mainstream programming community.

Largely this rejection is due to inertia. Our existing programming tools support certain programming paradigms. It makes sense to build new tools on existing tools, which reinforces support for these paradigms. But more subtly, because these are the programming tools that are available for beginner programmers, the programming community self-selects for people who naturally think in these paradigms.

New approaches to programming can attract unlikely programmers.


Many of my fellow students at ITP, while intelligent and resourceful, simply did not think in ways compatible with the ways we traditionally program computers. 









This incompatibility frustrated me on one level because creative visions might be unrealized or under-explored due to technical issues. And it frustrated me on another level because I feel that the act of programming can be the source for some of our deepest insights. Programming, when explored at its deepest levels, can induce ecstatic experiences--communion with the universe through computation. I want these insights and experiences to be available, in their own way, for everybody.













# Numbers are Overloaded

Numbers are heavily emphasized in elementary mathematics education and in traditional programming practices. So much so that the general populace believes that mathematics is *about* numbers and computers are *about* manipulating numbers. Of course the mathematics enthusiast knows that numbers are just one instance of many mathematical objects. Likewise, computers are capable of manipulating any mathematical object. Further, computers afford interface possibilities in working with these objects that paper does not. 

Like other primitives of the abstraction pyramid, numbers are an underlying representation which we unduly expose to the programmer. In many cases, the use of a number, or group of numbers, could be replaced in a graphical programming interface with a *space*. Likewise, operators and functions on numbers could be replaced with *spatial transformations*.

When creating programs of purely graphical concern, such as those created in Recursive Drawing, the elimination of numbers is natural. When it is achieved, it allows the programmer to think spatially throughout the programming process. In Context Free, the programmer is thinking spatially but Context Free requires her to perform the extra mental step of translating to numbers.

Other application targets ripe for introducing graphical programming interfaces using spatial primitives include:

1. OpenGL Shading Language (GLSL) shaders. GLSL is a language for writing programs which run on the GPU to calculate graphic rendering effects. The language is based on C, with extensions for vector and matrix math. All of the concerns of GLSL are spatial: vertices in 3D space, pixels on a 2D image, even colors in RGBA^[Red, Green, Blue, and Alpha (amount of transparency)] space. Most GLSL programs can be conceived as transformations within and between these spaces.
2. Computer vision algorithms. Typical tasks of computer vision algorithms can be conceived as spatial transformations. Image pre-processing is the composed of color space transformations. Primitive feature detection 
3. Machine learning algorithms. 

Another target ripe for replacement with a graphical interface using spatial primitives is 

Higher order abstractions are still available 

For programmers who excelled at the type of mathematics taught in schools, this will require disengaging from the symbolic manipulation part of the mind, and re-engaging the visual intuition.


Will require disengaging from the style of mathematics which is drilled in schools, and 


XXX

Machine learning algorithms, feature space