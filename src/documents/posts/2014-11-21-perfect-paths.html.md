---
layout: post
title: Perfect Paths
date: 2014-11-21 12:00
comments: true
tags: drawing
---

Sometimes you have a path that cannot be drawn perfectly by tracing out
one line at time.

Here is an attempt to draw a beveled angle with two lines with 'square'
line caps.  Since the turtle traces out one line at a time, the angle is not
a pretty bevel.  Instead, it is a mess of overlapped square line caps.

<pre class="examp">
pen red, 25, 'square', 'bevel'
fd 100
rt 120
fd 100
</pre>

<script type="demo" height=199>
setup ->
  moveto -50, -50
  turnto 30
demo ->
  pen red, 25, 'square', 'bevel'
  fd 100
  rt 120
  fd 100
</script>

The way to neatly draw this kind of shape is to draw the whole path
at once.  You can do this by asking the turtle to trace out
an invisible path with <code>pen path</code>.  Then use <code>fill</code>
to set the drawing options all at once.  Fill does not need to fill
the inside of the shape: it can be used to just perfectly stroke the
shape!

The options to fill are passed as an object, and the properties
should be indented with punctuation as in this example:

<pre class="examp">
pen path
fd 100
rt 120
fd 100
fill
  strokeStyle: red
  lineWidth: 25
  lineCap: 'square'
  lineJoin: 'bevel'
</pre>

<script type="demo" height=199>
setup ->
  moveto -50, -50
  turnto 30
demo ->
  pen path
  fd 100
  rt 120
  fd 100
  fill
    strokeStyle: red
    lineWidth: 25
    lineCap: 'square'
    lineJoin: 'bevel'
</script>

Here is a summary of the options that can be passed to fill:

| fill option         | possible values                                       |
|---------------------|-------------------------------------------------------|
| fillStyle           | red, plum, rgb(40,30,200), '#cde', hsla(120,.5,.5,.5) |
| strokeStyle         | *also any color*                                      |
| lineWidth           | *any number of pixels*, e.g., 25                      |
| lineCap             | 'butt', 'round' (default), 'square'                   |
| lineJoin            | 'bevel', 'miter', 'round' (default)                   |
| miterLimit          | *a number for sharpness of miter joins*, e.g., 10     |
| lineDash            | *any array of pixel lengths*, e.g., [10, 10]          |
| lineDashOffset      | *any number of pixels*, e.g., 5                       |

These style properties are from the [HTML5 2D Canvas standard](https://developer.mozilla.org/en-US/docs/Web/API/CanvasRenderingContext2D).

