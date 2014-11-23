---
layout: post
title: Variables in Code
date: 2014-11-22 12:00
comments: true
tags: learning, math
---

Variables are so fundamental to programming that it is easy
for an experienced programmer to forget what it really means
to learn about them.

### An easy one

This program is easy for a beginner who has learned that
<code>*</code> is multiplication:

<pre class="examp">
x = 15
write x * x
</pre>

No matter how you think about variables, clearly
<code>x</code> stands for 15, so the program
writes 15 * 15, which is 225.

### A hard one

On the other hand, a typical beginner cannot predict that
this program writes only perfect squares, even after they
have learned that <code>random [1..10]</code> makes a
random number from 1 to 10.

<pre class="examp">
x = random [1..10]
write x * x
</pre>

What is the trick here?

### Definitions versus memory

In code, the assignment <code>x = value</code> represents
storing a value in <strong>memory</strong>.

But if you have never written a program before, your experience
is that variables are used for <strong>definitions</strong>,
not memory.  When variables are used in algebra, the
statement <code>x = y</code> represents a permanent
timeless definition.  Therefore you might read our program like this:

<ol style="color:red">
<li><strong>Define</strong> <code>x</code> to mean
    <code>random [1..10]</code> everywhere.
    <mark>(wrong)</mark>
<li>Now <code>write x &ast; x</code> means
    <code>write (random [1..10]) &ast; (random [1..10])</code>.
<li>So it might randomly write something like 3&times;7 = 21.
</ol>

This is the wrong mental model in most modern
programming languages.  Here is the way to think about it:

<ol style="color:green">
<li>Calculate <code>random [1..10]</code> and store the answer in
   <strong>memory</strong> as <code>x</code>.  <mark>(right)</mark>
<li>Now <code>write x * x</code> means to look up the stored value of
   <code>x</code> each time it is needed.
<li>So it might randomly write something like 8&times;8 = 64.
</ol>

Variables are different in code and algebra.
<em>Variables in code represent a piece of memory.</em>

### Key concepts

 - A variable is name for a piece of memory.
 - A program is run in order from top to bottom.
 - Assignments <code>x = value</code> save a value in memory.
 - Referring to a variable looks up the value in memory.
