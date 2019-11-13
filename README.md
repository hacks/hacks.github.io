NU Hacks
=======

The website for NUHacks, a Northeastern University student organization for hackers and makers.

## Local Server

```bash
# 1. build image
docker build -t nuhacks $PWD
# 2. start container for the first time (use `-it` instead of `-p` for process to ocupy terminal)
docker run --rm -it -p 4000:4000 --name nuhacks -v $PWD:/srv/jekyll nuhacks
```

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
