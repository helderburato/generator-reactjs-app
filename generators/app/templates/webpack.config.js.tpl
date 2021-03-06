const path = require('path');
const ROOT_PATH = path.join(__dirname);

const APP_CONFIG = {
  src: path.join(ROOT_PATH, 'src'),
  indexJs: path.join(ROOT_PATH, 'src', 'index'),
  indexHtml: path.join(ROOT_PATH, 'public', 'index.html'),
  dist:  path.join(ROOT_PATH, 'dist'),
  bundleDev: 'bundle.js',
  bundleProd: 'bundle.[hash].js',
  publicPath: '/',
  root: ROOT_PATH,
  env: 'dev'
};

module.exports = env => {
  APP_CONFIG.env = env;

  const config = require(`./webpack-config/webpack.${env}`)(APP_CONFIG);
  return config;
};
