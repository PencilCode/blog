---
layout: post
title: Changes to Math Functions
date: 2015-08-07 12:00
comments: true
tags: math, debugging
---

We are making changes to some of the math functions, in particular the trigonometric and logarithmic functions.
To do that we also need to rename the existing `log` function, used for debugging.

Pencil Code is being used for more and more things! One area we looked at recently was use of the trigonometric functions.
Those are `cos`, `sin`, `tan`, and their inverse forms, `acos`, `acos`, `atan`, and `atan2`. Those functions are useful
for dealing with angles, such as when doing turtle geometry. Turtle turns are expressed in units of degrees, so it helps
that the trig functions measure angles in degrees.

When you learn trigonometry in high school and beyond, measurement of angles switches to radians. Some Pencil Code users
have figured out that the underlying Javascript `Math` library has trig functions in radians. We noticed that
many Pencil Code programs use `Math.cos`, `Math.sin`, and so on.

Both degrees and radians are useful, for different types of programs. We have decided to incorporate both forms of the
trig functions directly into Pencil Code, and make a clear distinction between them. In doing so, we follow the lead of
mathematical languages such as Fortran, MatLab, and Wolfram Alpha. `cosd`, `sind`, `tand`, `acosd`, `asind`, and `atand`
will operate in degrees, and `cos`, `sin`, `tan`, `acos`, `asin`, and `atan` will operate in radians.

<style>
  table {
      margin: 10px;
  }
  table, th, td {
      border: 1px solid black;
      border-collapse: collapse;
  }
  th, td {
      padding: 5px;
  }
</style>
<table>
  <tr>
    <th></th>
    <th>cosine</th>
    <th>sine</th>
    <th>tangent</th>
    <th>arccosine</th>
    <th>arcsine</th>
    <th>arctangent</th>
  </tr>
  <tr>
    <th>degrees</th>
    <td>cosd</td>
    <td>sind</td>
    <td>tand</td>
    <td>acosd</td>
    <td>asind</td>
    <td>atand</td>
  </tr>
  <tr>
    <th>radians</th>
    <td>cos</td>
    <td>sin</td>
    <td>tan</td>
    <td>acos</td>
    <td>asin</td>
    <td>atan</td>
  </tr>
</table>

One further change we're making is to remove `atan2`. Of course, that function is very useful, so we're
incorporating what it does into `atan` and `atand`. If you provide two arguments to `atan`
or `atand`, they will act like `atan2` or `atan2d` would act. You can think of
`atan` and `atand` as being 2-argument functions, where the second argument defaults to 1:

<pre class="examp">
atan  = (y, x = 1) -> ...
atand = (y, x = 1) -> ...
</pre>

So we're changing the behavior of the old trig functions. They used to operate in degrees, and now operate in radians.
To minimize the impact of this change, we have modified most of your existing programs that use old trig functions, to use
the new degrees forms. Those modified programs should continue to work, just as before. There were a few programs where we
weren't sure what to do. We left those alone. We did not change existing uses of the `Math.` forms of the trig
functions. But if you wanted to, you could switch to the shorter names, and your program will continue to work as it did.

Another change we will make (not yet, but soon) involves the logarithmic functions, `ln` and `log10`. We will remove them
and replace them with a single `log` function that takes an optional second argument. If you call `log` with a single argument,
the function will return the natural logarithm, just as the existing `ln` function does now. If you supply a second argument,
it specifies the base of the logarithm. So `log(x, 10)` will return the log base 10, just as `log10(x)` would now.
But as you can imagine, you can use other numbers for the base, as needed for your problem. For example, `log(x, 2)` might be
useful for figuring out how many bits are needed to encode a number in binary.

Unfortunately, `log` is currently a function useful for printing things while you're debugging. To prepare for the
upcoming change, we have added a new function, `debug`, which will do the debug printing that `log` currently does.
For now, `log` still exists and will do what it has been doing, but it will be noted as *deprecated*. We have
modified your existing programs that use `log` to use `debug` instead. Some of you figured out that you could use
the Javascript `console.log` function to do this debug printing. That will continue to work, and we did not change
those uses. For now we have left uses of `ln` and `log10` intact. We will change those when we change `log` to
be the logarithm function, instead of the debugging function.

Enjoy the new, expanded set of math functions, to do even more great things with Pencil Code!

<address>Bob Cassels</address>
