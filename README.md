# The Poetry of Resistance: A Cross-Linguistic Text Mining Analysis

**Mahmoud Darwish (Arabic) vs. Amiri Baraka (English)**

## Team

- Abdullah Tadmuri
- Maiheliya Maimaitimin
- Tone Varberg Sabri

## Course

Text Mining Final Project, UC3M, 2025-2026

## About

A bilingual text mining analysis comparing two canonical resistance poets across Arabic and English. The NRC multilingual emotion lexicon bridges the language divide, enabling direct comparison of emotional profiles. Ten techniques are applied: NRC sentiment, radar charts, heatmaps, sentiment arcs, TF-IDF, TTR/MATTR, sparsity, word frequency, bigram networks, and pairwise word correlation.

## How to Run

1. Open `baraka_darwish_analysis.Rmd` in RStudio
2. Install required packages: `tidyverse`, `tidytext`, `textdata`, `fmsb`, `quanteda`, `quanteda.textstats`, `quanteda.textplots`, `wordcloud`, `reshape2`, `igraph`, `ggraph`, `widyr`, `RColorBrewer`, `scales`, `knitr`, `ggwordcloud`, `patchwork`, `stopwords`
3. Knit to HTML

## Data

- **Poems**: 14 per poet, stored in `darwish_dataset.R` and `Baraka_dataset.R`
- **NRC Lexicon**: The [NRC Emotion Lexicon](https://saifmohammad.com/WebPages/NRC-Emotion-Lexicon.htm) (Mohammad & Turney, 2013) is included in `NRC-Emotion-Lexicon/`
