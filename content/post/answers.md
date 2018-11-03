---
date: 2018-11-03T11:15:58-04:00
description: "Answers"
featured_image: ""
tags: []
title: "Can this work?"
---

To add a post, we need to first add it in atlas_site/content/post/new-post.md. Then regenerate the webiste by running the command `hugo` in the terminal (within the atlas_site folder). Then go ahead and

```
git add . 
git commit -m "appropriate message"
]git push origin master
```
But this only updates the site code in the atlas_site repo: `github.com/CvilleEquityAtlas/atlas_site`

To update the generated site, we `cd` into the public folder, and do it against
```
git add .
git commit -m "appropriate message"
git push origin master again
```
This pushes to the website repo: `github.com/CvilleEquityAtlas/CvilleEquityAtlas.github.io`

So not as simple as I'd hoped for non-github users...
