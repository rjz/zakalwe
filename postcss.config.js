var path = require('path');

module.exports = {
  parser: 'postcss-scss',
  plugins: [
    require('precss')(),
    require('postcss-import')({
      paths: [
        'node_modules/normalize.css',
      ],
    }),
  ],
};
