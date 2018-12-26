cp ./rocketize-webpack/config/webpack.config.dev.js ./node_modules/react-scripts/config/webpack.config.dev.js
cp ./rocketize-webpack/config/webpackDevServer.config.js ./node_modules/react-scripts/config/webpackDevServer.config.js
cp ./rocketize-webpack/config/paths.js ./node_modules/react-scripts/config/paths.js
cp ./rocketize-webpack/scripts/start.js ./node_modules/react-scripts/scripts/start.js

cd ./node_modules/react-scripts
npm i happypack hard-source-webpack-plugin autodll-webpack-plugin@0.3

cd -
cp ./rocketize-webpack/happypack/lib/WebpackUtils.js ./node_modules/react-scripts/node_modules/happypack/lib/WebpackUtils.js

rm -rf ./public-dev
cp -R ./public ./public-dev

sed -i 's|</body>|<script type="text/javascript" src="/static/dll/vendor.dll.js"></script><script type="text/javascript" src="/static/js/bundle.js"></script></body>|g' ./public-dev/index.html