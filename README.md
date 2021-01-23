A series of Pandoc templates for [Pandoc](https://pandoc.org/) and [Pandocomatic](https://heerdebeer.org/Software/markdown/pandocomatic/) to convert Markdown into Word, HTML, and PDF. Also included is a [Pandoc lua filter](https://pandoc.org/lua-filters.html) to make use of some formatting shortcodes, namely `::: Aside :::` and `::: Questions :::` for orange and grey pop-out boxes, `\wordtoc` for a Word table of contents, and `\newpage` for a manual page break.

## Creating the output formats

To build:

1. Make sure Pandoc and Pandocomatic are installed and, for PDF, a valid Lualatex install. To make sure you have all the necessary Latex extensions and packages, I recommend using [Tex Live](https://tug.org/texlive/).
2. You can edit some options for the PDF output in `src/metadata.yaml`.
3. Put your source markdown documents (as `.md`) in the `src` folder. You can use sub-folders, and the directory structure in `src` will be duplicated in the output folder. Any file that starts with an underscore will be ignored - I find this useful to put images in (`_imgs`) so that they aren't copied over into the output, as they're not required when outputting using Pandoc's standalone option as these templates do. Any file in a directory named `index.txt` will be converted into just a `html` file - useful for building static site versions of your output that link to your various sub-documents.
4. In the terminal navigate into the project directory and either run `make` or, if you'd like to customise the build location, the full Pandocomatic command:

```
pandocomatic -i src -o docs -c config.yaml --modified-only --data-dir PATH_TO_PROJECT_DIR
```

Change `docs` to your desired output folder.

**Note:** The templates, shortcodes, and metadata files are navigated to from the root project folder in the config.yaml file, which is set as Pandoc's data directory with the command `--data-dir` and automatically discovered if using `make`. If you want to avoid using `data-dir`, you can move them elsewhere - into your own Pandoc data directory, for example - but you'll need to change their file location in `config.yaml` as well. I suggest checking out [this section in the Pandocomatic manual](https://heerdebeer.org/Software/markdown/pandocomatic/#specifying-paths) for help on specifying file paths in the config.