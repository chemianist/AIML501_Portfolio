# Machine Learning Algorithms — Comparative Visual Framework

A portfolio artifact by **Taoyi Chen**, prepared for an introductory machine-learning assignment.

## What this project includes

- `index.html` — responsive, accessible portfolio website, with an interactive algorithm filter and reflection.
- `styles.css` / `script.js` — styling and filtering logic.
- `assets/ml-algorithms-infographic.svg` — **editable, text-accurate infographic** explaining 10 methods.
- `assets/ml-algorithms-infographic.png` — high-resolution version for portfolio submission.
- `assets/model-selection-roadmap.svg` and `.png` — supporting decision guide.
- `REFLECTION.md` — reflection draft, to personalize before submission.
- `publish.ps1` — GitHub upload helper for Windows PowerShell.
- `publish.sh` — equivalent macOS/Linux script.

## Algorithm coverage

| Method | Learning type | Domain |
|---|---|---|
| Linear Regression | Supervised | Tabular Data |
| Logistic Regression | Supervised | Tabular Data |
| Decision Tree | Supervised | Tabular Data; Computer Vision (using extracted features) |
| Random Forest | Supervised | Tabular Data |
| Naive Bayes | Supervised | NLP |
| CNN | Supervised (example configuration) | Computer Vision |
| K-means | Unsupervised | Tabular Data |
| DBSCAN | Unsupervised | Tabular Data |
| PCA | Unsupervised | Tabular Data |
| GAN | Often unlabeled/adversarial training | Generative AI; Computer Vision |

**Terminology note:** GANs are included under the assignment's unsupervised category for simplicity, but generative modeling is not always unsupervised; conditional GANs can use labels. CNN architectures can also be trained using approaches other than supervised classification.

## Preview locally

Open `index.html` in your web browser, or in VS Code use Live Server. There are **no packages to install** and no server-side backend.

## Publish with GitHub Pages (recommended)

1. Sign in to GitHub and create an **empty public repository** named `ml-algorithms-portfolio` (do not initialize it with another README).
2. Extract this ZIP and open a terminal in the folder containing `index.html`.
3. If Git is installed, run the PowerShell helper: `./publish.ps1 -GitHubUsername YOUR_USERNAME` (on Windows) or `bash publish.sh YOUR_USERNAME` on macOS/Linux. You will need to authenticate when Git asks. Alternatively, upload the files using GitHub's **Add file → Upload files**.
4. Open your repository on GitHub, then go to **Settings → Pages**.
5. Under **Build and deployment**, choose **Deploy from a branch**, set branch **main** and folder **/(root)**, then **Save**.
6. Once GitHub publishes the site, its URL will normally be `https://YOUR_USERNAME.github.io/ml-algorithms-portfolio/`.
7. Share that URL with your instructor and make sure instructor access works in a private/incognito browser window.

GitHub's publishing-source guidance: https://docs.github.com/en/pages/getting-started-with-github-pages/configuring-a-publishing-source-for-your-github-pages-site

**Important:** GitHub Pages sites are public; avoid adding private or sensitive information.

## Customize before submitting

- Replace “Taoyi Chen” in `index.html` if needed.
- Review/edit the learning reflection in `index.html` and `REFLECTION.md` so it accurately describes your own experience.
- If your course requires a specific professional-portfolio template, link this project as an artifact and use the two visuals as its evidence.
- Include the website URL, the image, and the reflection in your submission.

## References and further reading

- scikit-learn User Guide, Supervised learning: https://scikit-learn.org/stable/supervised_learning.html
- scikit-learn User Guide, Unsupervised learning: https://scikit-learn.org/stable/unsupervised_learning.html
- PyTorch DCGAN tutorial: https://docs.pytorch.org/tutorials/beginner/dcgan_faces_tutorial.html

This is a theoretical comparison of machine-learning algorithms. No model-training or measured empirical evaluation is claimed.
