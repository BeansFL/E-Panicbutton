# Evolved-Studios: Advanced PanicButtons System for FiveM

Welcome to the Advanced PanicButtons System by Evolved-Studios.


[🎥 Check out our Showcase Video](https://www.youtube.com/watch?v=OAw8HUghbUQ)

## 📌 Table of Contents

- [Installation](#installation)
- [Configuration](#configuration)
- [Usage](#usage)
- [Support](#support)
- [Contribution](#contribution)

## 🛠 Installation

1. [Download the latest release from our repository.](https://github.com/BeansFL/E-Panicbutton)
2. Extract the contents into your FiveM resources directory.
3. Add `start E-Panicbutton` (or `ensure E-Panicbutton` based on your server version) to your `server.cfg`.

## 🛠 Configuration

Inside the `config.lua`:

- **Framework**: Specify your server framework with the `Config.Framework` option, choosing between 'esx' or 'qbcore'.
  
- **Jobs**: Add any job roles that should have access to the panic button in the `Config.Jobs` list.

- **Notifications**: Customize titles, display times, and messages in the notifications section.

- **Item Configuration**: If you choose to use an in-game item to trigger the panic button, set up details in the `Config.UseItem` section.

- **Commands**: Set your preferred keybinding and chat command for activating the panic button.

- **Webhooks**: Provide details for external notifications using Discord or other platforms.

## 🎮 Usage

- **For Players**: Simply press "0" or type `/panic` in the chat to trigger the panic button. If you're using an in-game item, ensure you possess the item before triggering.

- **For Admins**: Monitor the panic button triggers via  external webhooks, ensuring safety and good use.

## 🙋 Support

Found a bug? Got a suggestion? Feel free to [open an issue](https://github.com/BeansFL/E-Panicbutton/issues) or [start a discussion](https://github.com/BeansFL/E-Panicbutton/discussions) or simply join our [discord](https://discord.gg/yFVfD5m4Wr). We value your feedback!

## 🌟 Contribution

Contributions are always welcome! Please ensure you follow our contribution guidelines. Fork the project, make your changes, and submit a pull request.

---

Thanks for using our Advanced PanicButtons System.
