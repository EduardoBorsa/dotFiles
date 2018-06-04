const webpack = require('webpack');
const path = require('path');

// We'll set up some paths for our generated files and our development server
const staticDir = path.join(__dirname, '.');
const destDir = path.join(__dirname, '../priv/static');
const publicPath = '/';

// We'll be using the ExtractTextPlugin to extract any required CSS into a
// single CSS file
const ExtractTextPlugin = require('extract-text-webpack-plugin');
// We'll use CopyWebpackPlugin to copy over static assets like images and fonts
const CopyWebpackPlugin = require('copy-webpack-plugin');

// We'll configure webpack
module.exports = {
  // We have two entrypoints - the app.js file and our app.scss file
  // If it wasn't clear from that, we'll be using sass for our styles
  entry: [staticDir + '/js/app.js', staticDir + '/css/app.scss'],
  // We output to the destination dir, which is ../priv/static
  // We'll generate an app.js file
  // And our publicPath will be the root since our ../priv/static is accessible
  // there
  output: {
    path: destDir,
    filename: 'js/app.js',
    publicPath,
  },
  module: {
    // Then we'll make a few rules for webpack
    rules: [
      // JavaScript files will run through babel-loader, but we won't run babel
      // on node_modules because that's ridiculous
      {
        test: /\.js$/,
        exclude: [/node_modules/],
        use: [
          {
            loader: 'babel-loader',
          },
        ],
      },
      // Any CSS or SCSS files will run through the css loader, the sass
      // loader, and the import-glob-loader. The last one will allow us to use
      // glob patterns to import SCSS files - for instance, a whole directory of
      // them. That isn't available by default in node-sass
      {
        test: /\.s?css$/,
        use: ExtractTextPlugin.extract({
          use: 'css-loader!sass-loader!import-glob-loader',
          fallback: 'style-loader',
        }),
      },
      // We'll load any png files with a file loader, placing them in the images
      // directory
      {
        test: /\.(png)$/,
        loader: 'file-loader?name=images/[name].[ext]',
      },
      // Any fonts we run into will be placed into the fonts directory
      {
        test: /\.(eot|svg|ttf|woff|woff2)$/,
        loader: 'file-loader?name=fonts/[name].[ext]',
      },
      // If we load woff files we'll run them through the url-loader
      {
        test: /\.woff(2)?(\?v=[0-9]\.[0-9]\.[0-9])?$/,
        loader: 'url-loader?limit=10000&mimetype=application/font-woff',
      },
      // And any svg files will also go through the file loader
      {
        test: /\.(svg)(\?v=[0-9]\.[0-9]\.[0-9])?$/,
        loader: 'file-loader?name=images/[name].[ext]',
      },
    ],
  },
  // We'll configure the webpack dev server to serve its content from our assets
  // directory
  devServer: {
    contentBase: staticDir,
  },
  // And we'll configure our ExtractTextPlugin and CopyWebpackPlugin
  plugins: [
    new ExtractTextPlugin('css/app.css'),
    // We copy our images and fonts to the output folder
    new CopyWebpackPlugin([
      { from: './static/images', to: 'images' },
      { from: './static/fonts', to: 'fonts' },
    ]),
  ],
};
