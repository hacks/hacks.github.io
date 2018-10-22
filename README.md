NU Hacks
=======
[![Build Status](https://travis-ci.org/kylesferrazza/hacks.github.io.svg?branch=master)](https://travis-ci.org/kylesferrazza/hacks.github.io)

The website for NUHacks, a Northeastern University student organization for hackers and makers.

Hosted at: http://hacks.io

## Adding new announcments
Create a new `.md` file that's descriptive of your announcement in `_announcements/`.

If you don't know Markdown, it's super easy to learn! Here's a [link][md-link] to get you started.

## Adding new mentors
Add the following to `mentors.yml`:
```yml
- name: John Doe
  blurb: Stuff John Doe likes.
```

That's it!

## Adding more useful links
To add a link to the "Useful links" section, modify `links.yml` and add your link in the following format:
```yml
- title: Name of the link to display
  url: The actual link
```
