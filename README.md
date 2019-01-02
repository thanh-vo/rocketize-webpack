# Rocketize your webpack to have a better life


## Update Node.js

Please update your Node.js to `v10.14.2`(LTS). You may see a big difference even when you haven't done anything.

## Compatibility

Only work with `react-scripts`@1.

## Features

  **For dev config:**

  - Changed devtool to `cheap-module-eval-source-map` in dev config.
  - Used `happypack` to parallelize webpack bundling progress.
  - Used `hard-source-webpack-plugin` to cache modules.
  - Used `autodll-webpack-plugin` to split and cache big vendor.
  - Disabled some unnecessary options and plugins.

  **For prod config:**

  - Disabled `eslint-loader`
  - Used `happypack` to parallelize webpack bundling progress (only for JS code, applying for CSS is quite complicated, ignore for now).
  - Used `autodll-webpack-plugin` to split and cache big vendor.

## Results

  **Locally start:**

    without cache:  < 1m 30s  (1st touch)
    with cache:     < 25s

  **Hot reload:**

    1st time:       ~ 13s
    next times:     ~ 7-9s

  **Production build:**

    ~ 3 minutes

## How to use
  **_NOTE:_ All commands must be run at project root.**

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
    "scripts": {
      "webpack:rocketize": "bash ./path/to/your/script.sh",
    }
  }
  ```

## How to customize the configs

  If you don't want to use my configs, simply modify them in the `rocketize-webpack` folder then run
  ```bash
  bash ./rocketize-webpack/start.sh
  ```
