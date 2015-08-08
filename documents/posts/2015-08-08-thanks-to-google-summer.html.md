---
layout: post
title: Thanks to our GSoC Students
date: 2015-08-08 12:00
comments: true
tags: gsoc
---

<img src="/images/gsoc2015/icon-shot.png" style="float:right;margin-left:8px;height:250px">
As we return to school and look around Pencil Code this fall,
you will notice quite a few improvements that were created by
our Google Summer of Code students.  Let's take a look!

The first thing you'll see when you log in: icons everywhere!
But better yet, if you have saved the program recently, the
icon will be a screenshot of the program's output.  The change
will help students and teachers quickly identify old projects,
and it should help people also find interesting projects they
want to share.  And Pencil Code will be a much more color place.
If you do ever want to switch back to a dense text-only listing
view, you can just click the grid layout icon in the corner of
the blue title bar.

<img src="/images/gsoc2015/capture-shot.png" style="float:left;margin-right:8px;height:250px">
The icon implementation was done by Xinan Liu, a student
at Singapore National University.  He rewrote several bits of
the pencil code server to supprort the icons, and then on the client
side, he integrated the very cool html2canvas library to create
the screenshots.  If you click the "camera" icon, you can control
the screenshot that is used for the icon.

This summer, Xinan contributed quite a bit beyond this project.
He also refactored our node.js-based build to switch from require.js to
browserify, and he has been contributing to other sharing and scaling features
on Pencil Code, helping other non-GSoC contributors get up to speed
and reviewing their pull requests.  We're looking forward to Xinan's
continuing involvement and contributions to our little open-source
community!

<img src="/images/gsoc2015/html-shot.png" style="float:right;margin-left:8px;height:200px">
The next amazing contribution, by IIIT Hyderabad student Saksham Aggarwal,
is something you
will definitely want to use in your classrooms - but you might not
notice it at first!  To try it out, create a new project named **.html**
at the end - like `myfile.html`.  Saskham has implemented an HTML
block mode for the Droplet block editor, which means that you can
instroduce beginners to HTML syntax using a drag-and-drop interface.
And as usual with Droplet, you can toggle between blocks and text
at any time.  Saksham is also working on a similar Droplet-based
editor for CSS syntax.

<img src="/images/gsoc2015/css-shot.png" style="float:left;margin-right:8px;height:120px">
You might ask, why not teach a WYSIWYG interface for HTML authoring?
For a begnning programming class, the reason to teach HTML is not to
teach web design, but to teach the _idea_ of code.  By teaching HTML
before teaching a traditional language, students can get the idea
of code, program files, syntax, naming, nested structure, and
parameterization.  And they can learn all these important concepts
before wrestling with sequencing, state, and control flow.  Saksham's
visual HTML syntax editor is a very accessible way to see and work
with HTML syntax without having to type every bracket.  And yet,
magically, it does not hide the syntax - by toggling into text,
you can work directly with traditional code.  It is fully authentic,
but highly accessible.

<center><img src="/images/gsoc2015/tag-graph.png" style="height:250px;padding:16px;"></center>

Saksham's implementation reflects a few hidden but deep insights: he
uses a lenient HTML5-compliant parse5 parser, which means that you can
load up an arbitrary piece of unpretty HTML with mismatched tags or
other problems ("view source" on any web page), and his editor will
happily display the block structure of the code.
And his palette choices reflect an analysis he did by
analyzing a crawl of of real-world use of HTML tags on the web:
obscure rarely-used tags like `<tbody>` don't take up room in
the palette - space is given to tags that are really used in practice.
In working with Droplet, Saksham has added several core improvements
such as "plus" buttons and multi-drop regions.

<img src="/images/gsoc2015/debugger-shot.png" style="float:right;margin-left:8px;height:300px">
The final project was a collaboration between GSoC student
Jeremy Ruten from the University of Saskatchewan, and summer
students Amanda Boss from Harvard and Cali Stenson from Wellesley.
They created an incredibly ambitious project to implement a "rewindable"
debugger in Pencil Code.  Although it is not quite ready for production yet,
we are already using pieces of it in Pencil Code.  You will see the
debugger in coming months!

On the right is a bit of a preview of some of the new debugging features
to come.  From the screenshot, you can see three features of the
new debugger: it shows which line is running; it automatically shows
variable state next to relevant lines fo code; and it allows you to
"step forward" or "rewind" your code.  From the screenshot, you cannot
yet see some of the other tricks the debugger can play: it draws
arrows to show control flow loops and recursive function calls; it
it allows you to drag the slider back and forth as the program runs;
it draws turtles in the output window to show the state of the output;
and, marvelously, it works on any Coffeescript
or Javascript program, including programs that directly use the DOM
or other APIs.

A lot of the magic in the debugger is due to Jeremy's tracing transpiler,
which he has put into github under the
<a href="https://github.com/yjerem/pencil-tracer">pencil-tracer</a>
project.  Jeremy's transpiler processes code in those two languages
and outputs transformed code that includes tracing instrumentation
calls at every line.  For examples of how it transforms code, you
can check out <a href="/papers/visualizing_debugging_preprint.pdf">Jeremy
and Amanda and Cali's writeup</a> of their debugging work.

Did I mention that the thee of the are students?  And they
built this rewindable debugger over one summer?

As you can see - our students contributed incredible projects this
summer.  They all made improvements that will make a real difference
as we use Pencil Code to bring computer science to the next generation
of students.

We are grateful to Google for supporting the summer open-source program:
Google's support is valuable not just for the money for the students, but
because Google is really effective at bringing amazing students
together with open-source projects.

We hope the summer was as interesting for our students as it was
productive for our project.  We look forward to our students'
continued involvement in the Pencil Code community.  Thank you!

<address>David Bau</address>
