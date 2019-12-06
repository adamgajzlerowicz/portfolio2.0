const path = require('path')

module.exports = {
  resolve: {
    alias: {
      components: path.resolve(__dirname, './src/components/'),
      constants: path.resolve(__dirname, './src/constants/'),
      store: path.resolve(__dirname, './src/store/'),
    }
  }
}
