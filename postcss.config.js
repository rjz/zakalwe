var path = require('path');

module.exports = {
  parser: 'postcss-scss',
  plugins: [
    require('postcss-import')(),
    require('precss')(),
    require('postcss-calc')(),
  ],
};
