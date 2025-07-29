---
layout: default
title: Home
---

# Welcome to My Jekyll Test Site! 🎉

This is a test site running on **GitHub Enterprise Server** using Jekyll and GitHub Pages.

## Features Being Tested

- ✅ **Jekyll Build Process** - Static site generation
- ✅ **GitHub Pages Deployment** - Automated from `gh-pages/docs/` 
- ✅ **Custom Layouts** - Using Jekyll templating
- ✅ **Markdown Processing** - With kramdown parser
- ✅ **Footnotes** - Support for footnotes[^1]
- ✅ **Syntax Highlighting** - Code blocks with rouge
- ✅ **Responsive Design** - Mobile-friendly layout

## Recent Posts

<ul class="post-list">
{% for post in site.posts limit: 5 %}
    <li>
        <span class="post-date">{{ post.date | date: '%b %d, %Y' }}</span>
        <a href="{{ post.url | relative_url }}">{{ post.title }}</a>
    </li>
{% endfor %}
</ul>

## Code Example

Here's some sample code with syntax highlighting:

```javascript
function deployToGitHubPages() {
    console.log('🚀 Deploying to GitHub Pages...');
    
    const result = jekyllBuild();
    if (result.success) {
        console.log('✅ Deployment successful!');
        return true;
    }
    
    console.error('❌ Deployment failed');
    return false;
}
