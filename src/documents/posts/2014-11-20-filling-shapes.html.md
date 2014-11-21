---
layout: post
title: Filling Shapes
date: 2014-11-20 12:00
comments: true
tags: drawing
---

After you draw a shape, how do you fill it?

<pre class="examp">
pen violet, 5, 'miter'
for [1..5]
  fd 100
  rt 144
fill gold
</pre>

<script type="demo" height=199>
setup ->
  moveto -25, -50
demo ->
  pen violet, 5, 'miter'
  for [1..5]
    fd 100
    rt 144
  fill gold
  pause 1
  plan ->
    p = new Pencil
    p.pen 0.7
    p.move 25
    p.label 'fill gold', 'right'
    remove p
</script>

<code>fill</code> actually works by filling and retracing the path
that you have drawn with the current pen.  If you happen to have
used <code>jump</code>, <code>pen up</code>, or <code>pen down</code>,
it is still the same path, and the discontinuous parts will be filled
as separate ilands.  If you don't draw the ends of your shapes
together, fill will not do it for you.

<pre class="examp">
pen gold, 10
rt 180, 50
pen orangered, 10
for [1..3]
  jump 25, 25
  lt 90
  rt 180, 50
fill orange
</pre>

<script type="demo" height=249 width=249>
setup ->
  moveto -25, 50
demo ->
  pen gold, 10
  rt 180, 50
  pen orangered, 10
  for [1..3]
    jump 25, 25
    lt 90
    rt 180, 50
  pause 1
  fill orange
</script>

