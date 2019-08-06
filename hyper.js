// Future versions of Hyper may add additional config options,
// which will not automatically be merged into this file.
// See https://hyper.is#cfg for all currently supported options.

module.exports = {
  config: {
    updateChannel: "canary",
    fontSize: 14,
    fontFamily:
      '"Hasklug Nerd Font", Menlo, "DejaVu Sans Mono", Consolas, "Lucida Console", monospace',
    fontWeight: 300,
    fontWeightBold: 700,
    cursorColor: "rgba(248,28,229,0.8)",
    cursorAccentColor: "#000",
    cursorShape: "BLOCK",
    cursorBlink: false,
    foregroundColor: "#fff",
    backgroundColor: "#000",
    selectionColor: "rgba(248,28,229,0.3)",
    borderColor: "#333",
    css: "",
    termCSS: "",
    showHamburgerMenu: "",
    showWindowControls: "left",
    padding: "12px 14px",
    colors: {
      black: "#000000",
      red: "#C51E14",
      green: "#1DC121",
      yellow: "#C7C329",
      blue: "#0A2FC4",
      magenta: "#C839C5",
      cyan: "#20C5C6",
      white: "#C7C7C7",
      lightBlack: "#686868",
      lightRed: "#FD6F6B",
      lightGreen: "#67F86F",
      lightYellow: "#FFFA72",
      lightBlue: "#6A76FB",
      lightMagenta: "#FD7CFC",
      lightCyan: "#68FDFE",
      lightWhite: "#FFFFFF"
    },
    shell: "zsh",
    shellArgs: ["--login"],
    env: {},
    bell: "SOUND",
    copyOnSelect: false,
    defaultSSHApp: true,
    MaterialTheme: {
      // Set the theme variant,
      // OPTIONS: 'Darker', 'Palenight', 'Ocean', ''
      theme: 'Ocean',

      // [Optional] Set the rgba() app background opacity, useful when enableVibrance is true
      // OPTIONS: From 0.1 to 1
      backgroundOpacity: '0.9',

      // [Optional] Set the accent color for the current active tab
      accentColor: '#64FFDA',

      // [Optional] Mac Only. Need restart. Enable the vibrance and blurred background
      // OPTIONS: 'dark', 'ultra-dark', 'bright'
      // NOTE: The backgroundOpacity should be between 0.1 and 0.9 to see the effect.
      enableVibrance: true,
      vibrancy: 'bright'
  },
  },
  plugins: ["hyper-material-theme"],
  localPlugins: [],
  keymaps: {}
};
