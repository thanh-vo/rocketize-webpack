# Rocketize your webpack to have a better life


## Compatibility

Only work with `react-scripts@1`.

## Features

  **For dev config:**

  - Changed devtool to `cheap-module-eval-source-map` in dev config.
  - Used `happypack` to parallelize webpack bundling progress.
  - Used `hard-source-webpack-plugin` to cache modules.
  - Used `autodll-webpack-plugin` to split and cache big vendor.
  - Disabled some unnecessary options and plugins.

  **For prod config:**
  
  _(Nothing has been changed so far)_

## Results

  **Locally start:**

    without cache:  < 1m 30s  (1st touch)
    with cache:     < 25s

  **Hot reload:**

    1st time:       ~ 13s
    next times:     ~ 7-9s

## How to use

  Create a script to whenever you want in your JS project with the following sample content:

  ```bash
  rm -rf ./rocketize-webpack
  git clone git@github.com:thanh-vo/rocketize-webpack.git

  sh ./rocketize-webpack/start.sh
  ```

  Then, simply add it to your `package.json` to run.

  _For example:_

  ```json
  {
    ...
    "scripts": {
      ...
      "webpack:rocketize": "sh ./path/to/your/script.sh",
    }
  }
  ```

## How to customize the configs

  If you don't want to use my configs, simply modify them in the `rocketize-webpack` folder then run `start.sh`.