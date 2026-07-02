# My CV

A modern, responsive CV website built with static HTML and CSS.

## 🌐 Live Website

Visit my CV at: [https://befrvnk.github.io/cv](https://befrvnk.github.io/cv)

## 🚀 Development

### Requirements

- [Nix](https://nixos.org/)
- [devenv](https://devenv.sh/)
- [direnv](https://direnv.net/) is optional, but recommended for automatic shell activation

### Setup

Enter the development shell:

```sh
devenv shell
```

If you use direnv, allow the project once:

```sh
direnv allow
```

### Commands

```sh
serve   # Start a local static file server at http://localhost:8000
check   # Validate HTML and check formatting
format  # Format HTML, CSS, Markdown, and Nix files
```

## 📁 Project Structure

```text
index.html         # Main CV page
assets/styles.css  # Custom CSS without a build step
assets/            # Images and product icons
devenv.nix         # Reproducible development tooling
```

## 🛠️ Technologies Used

- HTML5
- CSS
- [devenv](https://devenv.sh/) for reproducible local tooling
- [Boxicons](https://boxicons.com) for icons
- [Inter](https://rsms.me/inter/) font from Google Fonts

## 📱 Features

- Responsive design
- Print-friendly styling
- Clean, modern layout
- Semantic HTML structure
- No frontend build step

## 📄 License

This project is open source and available under the [MIT License](LICENSE).

## 🙏 Acknowledgements

- [BartoszJarocki/cv](https://github.com/BartoszJarocki/cv) for the design inspiration
