---
layout: page
title: About
permalink: /about/
---

# About DevOps Command Hub

Welcome to the **DevOps Command Hub** - your comprehensive guide to DevOps tools, commands, and best practices. This project was created to provide developers and system administrators with quick access to essential commands with modern, user-friendly features.

## Features

### 🔄 One-Click Copy
Every command block includes a copy button that allows you to copy commands to your clipboard with a single click. No more manual selection and copying!

### 📚 Expandable Sections  
Complex command sequences are hidden behind expandable sections to keep the interface clean while providing detailed information when needed.

### 🌙 Dark Mode Support
The site automatically adapts to your system's dark/light mode preferences, providing a comfortable viewing experience at any time of day.

### 📱 Mobile Responsive
All command blocks and interfaces are optimized for mobile devices, so you can access commands on the go.

### 🚀 Fast Loading
Built with Jekyll and optimized for GitHub Pages, the site loads quickly and efficiently.

## Technology Stack

This site is built using modern web technologies:

- **Jekyll** - Static site generator
- **Minima Theme** - Clean, responsive Jekyll theme
- **GitHub Pages** - Hosting and deployment
- **Custom JavaScript** - Copy-to-clipboard functionality
- **CSS3** - Modern styling with dark mode support
- **Responsive Design** - Mobile-first approach

## Command Block Usage

Our custom command blocks support several features:

### Basic Command Block
```liquid
{% raw %}{% include command-block.html 
   id="unique-id" 
   title="Command Title" 
   command="echo 'Hello World'" 
   description="Brief description of what this command does." %}{% endraw %}
```

### Expandable Command Block
```liquid
{% raw %}{% include command-block.html 
   id="unique-id" 
   title="Advanced Commands" 
   expandable=true
   command="command1
command2
command3" 
   description="Description of the command sequence." %}{% endraw %}
```

## Contributing

We welcome contributions to improve this command hub! Here's how you can help:

### Adding New Commands
1. Fork the repository
2. Add your commands using the command-block include
3. Test your changes locally
4. Submit a pull request

### Reporting Issues
Found a bug or have a suggestion? Please [create an issue](https://github.com/your-repo/issues) with:
- Clear description of the problem or suggestion
- Steps to reproduce (for bugs)
- Expected vs actual behavior

### Command Categories
We organize commands into these categories:
- **Container Management** (Docker, Podman)
- **Orchestration** (Kubernetes, Docker Swarm)
- **Infrastructure as Code** (Terraform, Ansible)
- **CI/CD** (GitHub Actions, Jenkins)
- **Monitoring** (Prometheus, Grafana)
- **Version Control** (Git, SVN)

## Development Setup

To run this site locally:

{% include command-block.html 
   id="local-setup" 
   title="Local Development Setup" 
   expandable=true
   command="# Clone the repository
git clone https://github.com/your-username/devops-command-hub.git
cd devops-command-hub/src

# Install dependencies
bundle install

# Serve locally
bundle exec jekyll serve

# Open in browser
open http://localhost:4000" 
   description="Set up the Jekyll site for local development." %}

## License

This project is open source and available under the [MIT License](LICENSE).

## Acknowledgments

- **Jekyll** community for the excellent static site generator
- **GitHub** for providing free hosting via GitHub Pages
- **Minima** theme developers for the clean, responsive design
- All contributors who help improve this resource

---

## Contact

Have questions or suggestions? Reach out to us:

- **GitHub**: [your-github-username](https://github.com/your-github-username)
- **Email**: devops@example.com
- **Issues**: [Project Issues](https://github.com/your-repo/issues)

---

*Last updated: {{ site.time | date: '%B %d, %Y at %I:%M %p' }}*