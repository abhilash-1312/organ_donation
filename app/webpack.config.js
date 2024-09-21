const path = require("path");
const CopyWebpackPlugin = require("copy-webpack-plugin");

module.exports = {
  mode: 'development',
  entry: "./src/main.js",
  output: {
    filename: "main.js",
    path: path.resolve(__dirname, "dist"),
  },
  module: {
    rules: [
      {
        test: /\.json$/,
        type: 'javascript/auto',
        use: 'json-loader'
      },
      // other rules can be added here
    ]
  },
  plugins: [
    new CopyWebpackPlugin({
      patterns: [
        { from: "./src/index.html", to: "index.html" },
        { from: "./src/html/homepage.html", to: "homepage.html" },
        { from: "./src/html/about-us.html", to: "about-us.html" },
        { from: "./src/html/contact.html", to: "contact.html" },
        { from: "./src/html/awareness.html", to: "awareness.html" },
        { from: "./src/html/donor-registration.html", to: "donor-registration.html" },
        { from: "./src/html/donor-pledge.html", to: "donor-pledge.html" },
        { from: "./src/html/patient-registration.html", to: "patient-registration.html" },
        { from: "./src/html/verify-pledges.html", to: "verify-pledges.html" },
        { from: "./src/html/view-donors.html", to: "view-donors.html" },
        { from: "./src/html/view-pledges.html", to: "view-pledges.html" },
        { from: "./src/html/view-patients.html", to: "view-patients.html" },
        { from: "./src/html/transplant-matching.html", to: "transplant-matching.html" },
        { from: "./src/css/bootstrap.css", to: "css/bootstrap.css" },
        { from: "./src/css/styles.css", to: "css/styles.css" },
        { from: "./src/css/style-home.css", to: "css/style-home.css" },
        { from: "./src/css/fontawesome-all.css", to: "css/fontawesome-all.css" },
        { from: "./src/images/organ-donation-logo.svg", to: "images/organ-donation-logo.svg" },
        { from: "./src/images/organ-donation-logo-new.svg", to: "images/organ-donation-logo-new.svg" },
        { from: "./src/images/logo-new-final.svg", to: "images/logo-new-final.svg" },
        { from: "./src/images/logo-final-1.svg", to: "images/logo-final-1.svg" },
        { from: "./src/images/logo-final-2.svg", to: "images/logo-final-2.svg" },
        { from: "./src/images/header-image-new.png", to: "images/header-image-new.png" },
        { from: "./src/images/organ-donation-platform-logo.svg", to: "images/organ-donation-platform-logo.svg" },
        { from: "./src/images/organ-donation-platform-logo-1.svg", to: "images/organ-donation-platform-logo-1.svg" },
        { from: "./src/images/organ-donation-platform-logo-white.svg", to: "images/organ-donation-platform-logo-white.svg" },
        { from: "./src/images/donation-icon.svg", to: "images/donation-icon.svg" },
        { from: "./src/images/transplant-icon.svg", to: "images/transplant-icon.svg" },
        { from: "./src/images/waiting-list-icon.svg", to: "images/waiting-list-icon.svg" },
        { from: "./src/images/mail-icon.svg", to: "images/mail-icon.svg" },
        { from: "./src/images/A02.jpg", to: "images/A02.jpg" },
        { from: "./src/images/Abuthemonkey.jpg", to: "images/Abuthemoneky.jpg" },
        { from: "./src/images/Varaprasad.jpg", to: "images/Varaprasad.jpg" },
        { from: "./src/images/SaiNikhilReddy.jpg", to: "images/SaiNikhilreddy.jpg" },
      ],
    }),
  ],
  devServer: {
    static: {
      directory: path.join(__dirname, "dist"),
    },
    compress: true,
    port: 3000,
    hot: true,
  },
};
