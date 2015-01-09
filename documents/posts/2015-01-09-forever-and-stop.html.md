---
layout: post
title: Forever and Stop
date: 2015-01-09 16:30
comments: true
tags: animation, delta
---

Happy new year!

Here is a new year's resolution: by July 2015, we will freeze
the Pencil Code interface so that we can build curriculum
without worrying about removed features.  So mail me any
ideas of things that need to be changed in Pencil Code
before then - info@pencilcode.net.

### forever

The first change for 2015 is `forever`.

`forever` lets you repeat something indefinitely.  Put an
arrow `-&gt;` after it, then indent code that you want to
repeat.

<pre class="examp">
forever -&gt; &nbsp;
  fd 2
  rt 2
</pre>

<script type="demo">
setup ->
  stop()
  move -50, -25
demo (fin) ->
  forever ->
    fd 3
    rt 2
    if fin and not turtle.touches window
      fin()
      fin = null
</script>

It is useful for making animations.  The previous version
of this function was called `tick`.  The difference is
that `forever` lets you set up more than one loop to
run at once:

<pre class="examp">
forever -&gt;
  fd 2
  rt 2

forever -&gt;
  pen random color
</pre>

<script type="demo">
setup ->
  stop()
  move -50, -25
demo (fin) ->
  forever ->
    fd 3
    rt 2
  forever ->
    pen random color
    if fin and not turtle.touches window
      fin()
      fin = null
</script>

Clearly the first line says <code>x</code> stands for 15,
so the second line writes 15 * 15, which is 225.

### `stop()` nothing is forever

Inside a `forever` loop, `stop()` will stop the repetitions.
The following program will run the forever loop, watching for
the `w` and down `s` keys on the keyboard.  One of them will
increase `v` and make the turtle move.  The other will stop
the forever loop.

<pre class="examp">
v = 0
forever -&gt;
  fd v
  if pressed 'w'
    v = v + 0.1
  if pressed 's'
    stop()
</pre>

<script type="demo" width=99 height=199>
setup ->
  bk 75
demo (fin) ->
  v = 0
  forever ->
    fd v
    if pressed 'w'
      v = v + 0.1
    if pressed 's'
      stop()
      fin()
</script>

`forever` loops are different from `for` and `while` loops.
`forever` is a function whose loops are stopped by
calling the function `stop()`.

`for` and `while` are loops that are built-in to the language.  To
stop those loops, use the built-in command `break`.

### The speed of `forever`

The `forever` function can be set to repeat at any number of
repetitions per second.  Just add an optional number before
the arrow:

<pre class="examp">
forever 1, -&gt;
  dot random color
  rt 30
  fd 25
</pre>

<script type="demo">
setup ->
  stop()
  move -50, 0
demo (fin) ->
  setTimeout(fin, 9000)
  forever 1, ->
    dot random color
    rt 30
    fd 25
</script>

The number is the number of repetitions per second.
