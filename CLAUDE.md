# Openstrat Documentation - Claude Code Guide

## Working Relationship
- You can push back on ideas - this leads to better documentation. Cite sources and explain your reasoning when you do so
- ALWAYS ask for clarification rather than making assumptions
- NEVER lie, guess, or make up information
- Prioritize user value over word count - no filler content

## Project Context
- **Framework**: Mintlify documentation platform
- **Format**: MDX files with YAML frontmatter
- **Config**: docs.json for navigation, theme, and settings
- **Languages**: Bilingual support (Chinese zh/ and English en/)
- **Primary focus**: AI-powered quantitative investment platform for US stocks and cryptocurrency

## Content Strategy
- Document just enough for user success - not too much, not too little
- Prioritize accuracy and practical value over theoretical knowledge
- Make content evergreen when possible
- Search for existing information before adding new content
- Avoid duplication unless strategic (e.g., FAQ sections)
- Check existing patterns for consistency across both languages
- Start by making the smallest reasonable changes
- Focus on GEO (Generative Engine Optimization) for AI search engines

## docs.json Configuration
- Refer to the [docs.json schema](https://mintlify.com/docs.json) when modifying configuration
- Navigation structure: Documentation, Learn (投资知识库), HowTo sections
- Language support via navigation.languages array
- Theme colors: primary #4A90E2, light #00D4FF, dark #1A1A1A

## Frontmatter Requirements
Required fields for all MDX pages:
```yaml
---
title: Descriptive title optimized for SEO
description: Comprehensive description with keywords
keywords: comma, separated, relevant, keywords
---
```

Optional SEO enhancement:
```yaml
seo:
  title: Extended SEO title | Openstrat
  description: Detailed meta description for search engines
```

## Writing Standards

### Voice and Tone
- Second-person voice ("you") for instructions
- Professional yet accessible tone
- Avoid excessive enthusiasm or emojis
- Concise and direct - minimize preamble

### Content Structure
- Prerequisites at start of procedural content
- Clear headings hierarchy (##, ###, ####)
- Use tables for comparisons
- Include FAQ sections for GEO optimization
- Add internal links to related content
- Test all code examples before publishing

### Language-Specific Guidelines
- **Chinese (zh/)**: Use simplified Chinese, maintain consistency with app terminology
- **English (en/)**: Clear, concise technical writing
- Ensure feature parity between language versions
- Keep navigation labels consistent (e.g., "使用指南" for Chinese, "Documentation" for English)

### Technical Requirements
- Language tags on all code blocks
- Alt text on all images (stored in /images/screenshots/)
- Relative paths for internal links
- Use structured data (tables, lists) for better AI parsing

## File Organization
```
docs/
├── zh/                 # Chinese content
│   ├── documentation/  # User guides
│   ├── learn/         # Investment knowledge base
│   └── howto/         # Tutorials
├── en/                 # English content
│   ├── documentation/
│   ├── learn/
│   └── howto/
├── images/
│   └── screenshots/   # UI screenshots
├── docs.json          # Configuration
├── styles.css         # Custom styling
└── CLAUDE.md          # This file
```

## Git Workflow
- NEVER use --no-verify when committing
- Ask how to handle uncommitted changes before starting
- Create descriptive commit messages
- Commit frequently throughout development
- NEVER skip or disable pre-commit hooks
- Use conventional commits format:
  - feat: new features
  - docs: documentation changes
  - style: formatting changes
  - fix: bug fixes

## Specific Tasks

### Adding New Learn Content
1. Check existing content to avoid duplication
2. Create bilingual versions if possible
3. Include practical examples and real-world scenarios
4. Add FAQ section with 3-5 common questions
5. Include internal links to related topics
6. Optimize title and description for GEO

### Updating Technical Documentation
1. Verify technical accuracy with latest platform features
2. Update screenshots if UI has changed
3. Test any code examples or API calls
4. Maintain consistency with existing documentation style
5. Update both language versions when applicable

### GEO Optimization
- Use descriptive, keyword-rich titles
- Include comparison tables and structured data
- Add Q&A sections to pages
- Create comprehensive FAQ pages
- Use internal linking extensively
- Include relevant keywords naturally in content

## Component Usage
Available Mintlify components:
- Tables for data comparison
- Code blocks with syntax highlighting
- Callout boxes for important notes
- Tabs for multi-language examples
- Cards for feature highlights

## Do NOT
- Skip frontmatter on any MDX file
- Use absolute URLs for internal links
- Include untested code examples
- Make assumptions - always ask for clarification
- Add content just to increase word count
- Use Chinese filenames or paths
- Commit directly to main branch without review
- Forget to update both language versions

## Common Commands

### Check documentation consistency
```bash
# Review all MDX files for proper frontmatter
find . -name "*.mdx" -exec head -n 10 {} \;

# Check for broken internal links
grep -r "\](/[^)]*" --include="*.mdx"
```

### Preview changes locally
```bash
# Install Mintlify CLI if not already installed
npm i -g mintlify

# Run local preview
mintlify dev
```

### Deploy to Mintlify
```bash
# Deploy via GitHub (automatic on push to main)
git push origin main
```

## Project-Specific Context

### Openstrat Platform Features
- Technical bottom/top identification system
- AI Chat for market analysis
- Stock analysis tools
- News and market monitoring
- Support for US stocks and cryptocurrency
- Subscription ($39.99/month) and pay-per-use pricing models

### Target Audience
- Individual investors seeking quantitative tools
- Time-constrained professionals
- Users new to quantitative investing
- Both Chinese and English-speaking markets

### Key Differentiators
- AI-powered signal generation
- Multi-timeframe analysis
- Real-time market monitoring
- Simplified interface for non-technical users

## Quality Checklist
Before committing documentation changes:
- [ ] Frontmatter includes title, description, keywords
- [ ] Content provides real value to users
- [ ] Code examples are tested and working
- [ ] Internal links use relative paths
- [ ] Images have descriptive alt text
- [ ] Both language versions updated (if applicable)
- [ ] GEO optimization applied (keywords, structure, Q&A)
- [ ] Consistent with existing documentation style