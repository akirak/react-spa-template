const { override, addWebpackAlias } = require('customize-cra');
const rewiredSWC = require('react-app-rewired-swc');
const path = require('path');

module.exports = override(
  rewiredSWC(),
  addWebpackAlias({
    ['@']: path.resolve(__dirname, 'src'),
  })
);
