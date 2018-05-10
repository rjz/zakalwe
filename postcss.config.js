var path = require('path');

module.exports = {
  parser: 'postcss-scss',
  plugins: [
    require('precss')(),
    require('postcss-calc')(),
    require('postcss-import')({
      paths: [
        'node_modules/normalize.css',
      ],
    }),
  ],
};
