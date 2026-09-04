# DICES-2025-Ovid-Speech
Data and code for reproducing Bolt et al., "Computational Stylometry and Speech Style in Ovid's Metamorphoses," in _Direct Speech in Greek and Latin Epic: Expanding the Methods and Canon_

## Citation

If you use the data or code in this repository, please cite:

> T. J. Bolt, P. Chaudhuri, and J. P. Dexter. “Computational Stylometry and Speech Style in Ovid’s *Metamorphoses*.” In *Direct Speech in Greek and Latin Epic: Expanding the Methods and Canon*, edited by C. Forstall and B. Verhelst, 248–268. Brill, 2025. https://doi.org/10.1163/9789004750227_012.

### BibTeX

```bibtex
@incollection{bolt2025computational,
  author    = {Bolt, Thomas J. and Chaudhuri, Pramit and Dexter, Joseph P.},
  title     = {Computational Stylometry and Speech Style in Ovid's Metamorphoses},
  booktitle = {Direct Speech in Greek and Latin Epic: Expanding the Methods and Canon},
  editor    = {Forstall, Christopher and Verhelst, Berenice},
  publisher = {Brill},
  year      = {2025},
  pages     = {248--268},
  doi       = {10.1163/9789004750227_012}
}
```
## Installation

## Software Requirements

The repository contains both Python notebooks and MATLAB scripts. The Python dependencies required to run the notebooks are listed in `requirements.txt`.

To install them, run:

```bash
pip install -r requirements.txt
```

We recommend using a virtual environment to keep the project dependencies isolated from other Python installations.

The notebooks were run using **Python 3.13.0**, and the MATLAB scripts were run using **MATLAB R2023b**.

## Repository Structure

The repository is organized into four sections:

### 1. `speech_preprocessing`

The `speech_preprocessing` directory contains the preprocessing script `DICES_preprocessing.ipynb`, which extracts the direct-speech excerpts analyzed in the chapter.

The extracted speeches are available in `output_speeches_50_lines`, and the corresponding stylometric data are in `output_speeches_50_lines_stylometry_data`.

For details on generating the stylometric data, consult:

T. J. Bolt, E. D. Adams, Z. Adramerinas, P. J. Burns, T. Dasgupta, A. Deng, E. T. Gianitsos, E. F. Rincon, P. Chaudhuri, and J. P. Dexter. “Stylometric Criticism of Latin Literature: From Exploratory Data Analysis to Close Reading.” *TAPA* 155 (2025): 205–250. https://doi.org/10.1353/apa.2025.a957882.

Code for generating the stylometric data is available at:

https://github.com/QuantitativeCriticismLab/TAPA-2025-Stylometric-Criticism.

### 2. `fig_11_1`

The `fig_11_1` directory contains the data and code for reproducing Figure 11.1, which considers sentence length and relative clause fraction across narrative epic.

* `violin_epic.m` produces the violin plot.
* `scatter_met.m` produces the scatterplot.

### 3. `table_11_2`

The `table_11_2` directory contains the data for reproducing Table 11.2, which reports stylometric differences between the speeches of _Ajax_ and _Ulysses_ in _Met_. 13.

### 4. `fig_11_2`

The `fig_11_2` directory contains the data and code for reproducing Figure 11.2 and the classification analysis described on p. 261 of the chapter.

* `violin_gender.m` produces the violin plot of interrogative sentence frequency across the speeches.
* `DICES_speech_classification.ipynb` contains the code for training and evaluating the random forest classifier for speaker gender.
