A series of Pandoc templates for [Pandoc](https://pandoc.org/) and [Pandocomatic](https://heerdebeer.org/Software/markdown/pandocomatic/) to convert Markdown into Word, HTML, and PDF formats. Also included is a [Pandoc lua filter](https://pandoc.org/lua-filters.html) to make use of some formatting shortcodes, namely `::: Aside` and `::: Questions` for alert and question boxes.

## Creating the output formats

To build:

1. First make sure Pandoc and Pandocomatic are installed.
2. You can edit some options for the PDF output in `src/metadata.yaml`.
3. In the terminal navigate into the project directory and either run `make` or, if you'd like to customise the build location, the full Pandocomatic command:

```
pandocomatic -i src -o docs -c config.yaml --modified-only --data-dir PATH_TO_PROJECT_DIR
```

Change `docs` to your desired output folder.

**Note:** The templates, shortcodes, and metadata files are navigated to from the root project folder in the config.yaml file, which is set with the command `--root-path`. If you want to avoid using `root-path`, you can move them elsewhere - into your Pandoc data directory, for example - but you'll need to change their file location in config.yaml as well. I suggest checking out [this section in the Pandocomatic manual](https://heerdebeer.org/Software/markdown/pandocomatic/#specifying-paths) for help on specifying file paths in the config.