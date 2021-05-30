module.exports = {
  purge: [
    './app/**/*.html.erb',
    './app/helpers/**/*.rb',
    './app/javascript/**/*.js',
    './app/javascript/**/*.vue',
  ],
  darkMode: false, // or 'media' or 'class'
  theme: {
    extend: {
      fontFamily: {
        handlee: ['Handlee'],
        montserrat: ['Montserrat'],
        montez: ['Montez'],
        pacifico: ['Pacifico'],
      },
    },
  },
  variants: {
    extend: {},
  },
  plugins: [],
};
