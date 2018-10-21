NU Hacks
=======
[![Build Status](https://travis-ci.org/kylesferrazza/hacks.github.io.svg?branch=master)](https://travis-ci.org/kylesferrazza/hacks.github.io)

The website for NUHacks, a Northeastern University student organization for hackers and makers.

Hosted at: http://hacks.io

## Adding new announcments
Create a new `.md` file that's descriptive of your announcement in `announcements/`. The first 3 lines **must** be the following:
```yml
---
layout: announcement
---
```

Then, the rest should be your announcement, in Markdown. If you don't know Markdown, it's super easy to learn! Here's a [link][md-link] to get you started.

## Adding new mentors
Add the following to `mentors.md`:
```markdown
### John Doe
Stuff John Doe likes.
```

That's it!

## Adding more useful links
To add a link to the "Useful links" section, modify `useful-links.md` and add your link in the following format:
```markdown
[Display text][reference-link]

...

[reference-link]: example.com/link/to/webpage
```
note that `reference-link` must be unique, and should be descriptive of the link itself.

For example, if you wanted to add a Northeastern link to the section, you would do the following:
```markdown
[Northeastern University's homepage][neu-homepage]

[neu-homepage]: https://northeastern.edu/
```


[md-link]: https://programminghistorian.org/lessons/getting-started-with-markdown
