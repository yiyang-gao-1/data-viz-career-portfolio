# Data Visualisation for Career Portfolio

**Guest Lecture (Week 9, SMI105: Data Visualisation)**  
Dr Yiyang Gao, Sheffield Methods Institute  
Date: 2025-10-05

---

## 🎯 Overview

This guest lecture shows how to use **R + Quarto** to turn coursework and small projects into a public **portfolio** that helps with internships and jobs.

We will cover:
- Why portfolios matter for data roles
- Turning R scripts into reproducible visualisations
- Publishing a simple **Quarto website** on GitHub Pages
- A minimal **Shiny** demo you can extend

---

## 💡 Repo Contents

| Folder | Description |
|---|---|
| `slides/` | Quarto revealjs slides for the lecture |
| `demo_r/` | R demos: ggplot, Shiny, and a Quarto site skeleton |
| `student_templates/` | Starter templates for students to build their own portfolio |
| `data/` | Small sample dataset(s) used in the demos |
| `.github/workflows/` | (Optional) GitHub Actions workflow to auto-publish the Quarto site |

---

## 🚀 Quick Start (local preview)

1. Install Quarto: https://quarto.org/docs/get-started/
2. In R: install packages used in demos
   ```r
   install.packages(c("ggplot2","dplyr","readr","shiny","plotly"))
   ```
3. Preview slides locally:
   ```bash
   quarto preview slides/week9_guest_lecture.qmd
   ```
4. Preview the demo site:
   ```bash
   cd demo_r/quarto_site_demo
   quarto preview
   ```
5. Run the Shiny app:
   ```r
   shiny::runApp("demo_r/shiny_demo")
   ```

---

## 🌐 Publish to GitHub Pages (recommended)

**Option A: Simple (docs/ folder)**  
Set `project.output-dir: ../../docs` in `demo_r/quarto_site_demo/_quarto.yml`, then:
```bash
cd demo_r/quarto_site_demo
quarto render
```
Commit and push. In your repo Settings → Pages, set **Branch: main, Folder: /docs**.

**Option B: GitHub Actions (automated)**  
Keep `output-dir: _site` and use the provided workflow in `.github/workflows/quarto-publish.yml`.

---

## 📚 References & Inspiration
- Quarto Websites: https://quarto.org/docs/websites/
- GitHub Pages: https://pages.github.com/
- R for Data Visualisation: https://r4ds.hadley.nz/data-visualize.html

---

## ✅ Teaching Notes (for the live session)
- Hook: “Your projects are your Google results.”
- Show 1 static ggplot → 1 interactive chart → site integration
- 5–7 minutes live build: add a plot to `index.qmd`, render, publish
