---
title: "Post: Modified Date"
last_modified_at: 2016-03-09T16:20:02-05:00
toc_label: "Vim TOC"
excerpt_separator: "<!--more-->"
categories:
  - Blog
tags:
  - Post Formats
  - readability
  - standard
---
## Vim
This post has been updated and should show a modified date if used in a layout. This section is within the excerpt section and will show up in post lists.  Multiple paragraphs use a different separator which has been set in the _config.yml file.

___
{% assign tool = site.data.tools.vim %}

<a href="{{ tool.website }}" target="_blank">Website</a>
| <a href="{{ tool.documentation }}" target="_blank">Documentation</a>
| <a href="{{ tool.cheat-sheet }}" target="_blank">Cheat Sheet</a>

### Courses & Tutorials
<ul>
{% for course in tool.learning %}
    <li>
        <a href="{{ course.link }}">{{ course.name }}</a>
    </li>
{% endfor %} 
</ul>

### Resources
<ul>
{% for res in tool.resources%}
    <li>
        <a href="{{ res.link }}">{{ res.name }}</a>
    </li>
{% endfor %} 
</ul>
___
<!--more-->

All children, except one, grow up. They soon know that they will grow up, and the way Wendy knew was this. One day when she was two years old she was playing in a garden, and she plucked another flower and ran with it to her mother. I suppose she must have looked rather delightful, for Mrs. Darling put her hand to her heart and cried, "Oh, why can't you remain like this for ever!" This was all that passed between them on the subject, but henceforth Wendy knew that she must grow up. You always know after you are two. Two is the beginning of the end.

All children, except one, grow up. They soon know that they will grow up, and the way Wendy knew was this. One day when she was two years old she was playing in a garden, and she plucked another flower and ran with it to her mother. I suppose she must have looked rather delightful, for Mrs. Darling put her hand to her heart and cried, "Oh, why can't you remain like this for ever!" This was all that passed between them on the subject, but henceforth Wendy knew that she must grow up. You always know after you are two. Two is the beginning of the end.

All children, except one, grow up. They soon know that they will grow up, and the way Wendy knew was this. One day when she was two years old she was playing in a garden, and she plucked another flower and ran with it to her mother. I suppose she must have looked rather delightful, for Mrs. Darling put her hand to her heart and cried, "Oh, why can't you remain like this for ever!" This was all that passed between them on the subject, but henceforth Wendy knew that she must grow up. You always know after you are two. Two is the beginning of the end.

