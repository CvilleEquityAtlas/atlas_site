---
title: "Publish Changes"
date: 2018-11-03T14:44:35-05:00
featured_image: "/images/uva_wall_beggs.png"
tags: []
categories: []
---

In the atlas_site repo, I added a publish-changes.sh shell script to make updates a little simpler. Once a new post has been added (or any change) in atlas_site/content (or anywhere), from the terminal
run

```
bash publish_changes.sh
```

This will automatically rebuild the site (issue the command `hugo`), and add updates to both the source repo (atlas_site) and the website repo (cvilleequityatlas.github.io). And Bob's your uncle.
