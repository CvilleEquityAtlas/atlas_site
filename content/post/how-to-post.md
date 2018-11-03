---
title: "How to Post"
date: 2018-11-03T17:25:36-04:00
description: "A how-to guide for adding a blog post"
featured_image: ""
categories: []
---

## Method the first: independent updates

To directly add a post to this blog as a collaborator requires,

1. If you don't yet have a [github account](https://github.com/), get one; download and install [git](https://git-scm.com/downloads). In the end, your life will be easier if you take the time to set up ssh as well -- I really like [Karl Broman's explanation](http://kbroman.org/github_tutorial/pages/first_time.html) of these steps.
2. Be added as a collaborator to the organizational account, [github.com/CvilleEquityAtlas](https://github.com/CvilleEquityAtlas)
3. Clone the atlas_site repo and the cvilleequityatals.github.io repo to your local machine (e.g., your laptop)
   * In the terminal/command line, navigate to where you want to put these directories and type

   ```
   cd folder/to/clone/into/
   git clone https://github.com/CvilleEquityAtlas/atlas_site.git
   git clone https://github.com/CvilleEquityAtlas/CvilleEquityAtlas.github.io.git
   ```

   * Now you have a copy of these directories and they are already attached to the original repo. To see this, in the terminal navigate to the directory and look at the remote source

   ```
   cd atlas_site
   git remote -v
   cd public
   git remote -v
   ```

   The atlas_site repo should say

   ```
   origin	https://github.com/CvilleEquityAtlas/atlas_site.git (fetch)
   origin	https://github.com/CvilleEquityAtlas/atlas_site.git (push)
   ```

   But the public folder should say

   ```
   origin	https://github.com/CvilleEquityAtlas/CvilleEquityAtlas.github.io (fetch)
   origin	https://github.com/CvilleEquityAtlas/CvilleEquityAtlas.github.io (push)
   ```

4. To add a post, in the terminal, navigate to the atlas_site directory and type

```
hugo new post/name-of-post.md
```

This will create a new markdown file for the next post, automatically adding the date-time and the title (based on name-of-post, which should appear as Name of Post -- but you can change this to whatever you like in a moment).  It will also generate fields for a description, an image, or tags, but you can leave these blank
5. Now add content to the markdown file. You can do this in any text editor you like (but a real text editor, not word).  I use [Atom](https://atom.io/), but opinions on text editors vary widely (and possibly by operating system).
   * The only trick is to use markdown -- a plain text syntax that can be converted to HTML -- . Here's [a cheat sheet](https://github.com/adam-p/markdown-here/wiki/Markdown-Cheatsheet). If the post is just plain text (no headers, links, boldface, etc.), you don't even need this!
6. When you're done, you can check how it looks by typing  in the terminal (from the atlas_site directory)

```
hugo server
```

And checking out the changes at [http://localhost:1313](http://localhost:1313), a local server. In the terminal, type Ctrl+C when you want to close the local server
7. If you're happy with it, in the terminal run the publish_changes.sh description

```
bash publish_changes.sh
```

(I believe git comes with a bash emulator for Windows, but I don't have a Windows machine to verify). This will rebuild the site and push the changes in the source code and site pages to github. Within a minute or so, the changes will be reflected on the webiste: [cvilleequityatlas.github.io](https://cvilleequityatlas.github.io/)!

## Method the second: dependent updates

If you don't want to do all that, you can follow steps 1 and 2 and make changes in the github repo directly.

{:start="3"}
3. Once you're a collaborator, navigate to the [altas_site repo](https://github.com/CvilleEquityAtlas/atlas_site) and go to content/post.

4. Click `Create new file` and fill in the name, name-of-post.md. Then start typing (using markdown for any formatting). Be sure to add the header information (by, for example, clicking on another post, clicking the edit icon/pencil, copying the header information, pasting it in your post, and the **adding the correct information, including date and time**).

5. Email [me](mailto:mclaibourn@virginia.edu) and I'll fetch, build, and push it back up.
