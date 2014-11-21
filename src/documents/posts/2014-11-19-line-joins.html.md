---
layout: post
title: Pen Line Joins
date: 2014-11-19 12:00
comments: true
tags: drawing
---

How many points does a triangle have?

<pre class="examp">
pen green, 25
for [1..3]
  fd 100
  rt 120
</pre>

<script type="demo" height=199>
setup ->
  moveto -50, -50
demo ->
  pen green, 25
  for [1..3]
    fd 100
    rt 120
</script>

Try the demo above.  When you use a thick pen, a
triangle has no points!  That is because the corners are rounded.

In the
[web Canvas standard](http://www.w3.org/TR/2014/CR-2dcontext-20140821/#dom-context-2d-linejoin),
there are three styles of line joins: 'miter', 'bevel', and 'round'.
The turtle defaults to round, but we can try another shape by adding
the name of the style to the pen command.  (It has to be in quotes.)

<pre class="examp">
pen green, 25, 'miter'
for [1..3]
  fd 100
  rt 120
</pre>

<script type="demo" height=199>
setup ->
  moveto -50, -50
demo ->
  pen green, 25, 'miter'
  for [1..3]
    fd 100
    rt 120
</script>

The 'miter' line join makes a sharp mitered corner.  Only one problem:
we haven't joined that last corner yet.  We could move the turtle a
little bit (with <code>fd 1</code>) to get a corner.

Or we can use the "fill" command with no color, which will close up
any shape that ends where it starts.

<pre class="examp">
pen green, 25, 'miter'
for [1..3]
  fd 100
  rt 120
fill()
</pre>

<script type="demo" height=199>
setup ->
  moveto -50, -50
demo ->
  pen green, 25, 'miter'
  for [1..3]
    fd 100
    rt 120
  fill()
</script>

Triangles should have three points, and now they do!
