Graphviz
========

001 Simple diagram
------------------

Following example should generate SVG file and allow to have working links on diagram.
(Clicking SCM name should open home page for selected SCM).

.. graphviz::

     digraph example {
         a [label="SCM"];
         b [label="GitHub", href="https://github.com/", target="_top"];
         c [label="GitLab", href="https://about.gitlab.com/", target="_top"];
         d [label="Bitbucket", href="https://bitbucket.org/", target="_top"];

         a -> b;
         a -> c;
         a -> d;
     }

**Based on:**

- `Sphinx-doc Graphviz <http://www.sphinx-doc.org/en/master/ext/graphviz.html>`_
