<div align="center">

# Beat the Zombie Game

**A first-person zombie survival prototype built with Godot.**

Explore a 3D environment, fight hostile creatures, interact with the world, and experiment with a dynamic weather and season system.

[![Godot 4.4](https://img.shields.io/badge/Godot-4.4-478CBF?style=for-the-badge&logo=godot-engine&logoColor=white)](https://godotengine.org/)
![GDScript](https://img.shields.io/badge/GDScript-Game%20Logic-355570?style=for-the-badge&logo=godot-engine&logoColor=white)
![C#](https://img.shields.io/badge/C%23-Weather%20System-512BD4?style=for-the-badge&logo=dotnet&logoColor=white)
![Renderer](https://img.shields.io/badge/Renderer-Forward%20Plus-222222?style=for-the-badge)
![Platform](https://img.shields.io/badge/Platform-Desktop-2E7D32?style=for-the-badge)
![Status](https://img.shields.io/badge/Status-In%20Development-B8860B?style=for-the-badge)
![Version](https://img.shields.io/badge/Version-v0.1.18-1565C0?style=for-the-badge)

[Features](#features) • [Getting Started](#getting-started) • [Controls](#controls) • [Tutorial](#video-tutorial) • [Contributing](#contributing)

</div>

---

## About

**Beat the Zombie Game** is an early-stage FPS prototype focused on first-person movement, weapon mechanics, enemy encounters, and environmental interaction. The repository also includes a configurable weather system with seasons, a day/night cycle, clouds, fog, rain, and snow.

The project is intended for experimentation and learning. Gameplay systems, content, balancing, and platform support are still under active development.

## Features

- **First-person controller** with mouse look, walking, running, and jumping
- **Pistol combat** with firing animation and projectile spawning
- **Enemy navigation** using Godot's `NavigationAgent3D`
- **Enemy attack behavior** driven by distance and animation states
- **Interactive doors** that open and close when the player is nearby
- **Hit feedback** using a brief screen overlay
- **Dynamic weather resources** for clear skies, clouds, rain, heavy rain, snow, and heavy snow
- **Season configuration** with summer and winter presets
- **Day/night cycle** with changing sky colors and directional lighting
- **Weather effects** including cloud transitions, fog, and GPU precipitation particles

## Screenshots

<img width="1913" height="1079" alt="image" src="https://github.com/user-attachments/assets/a8d2f7f1-feab-4ed6-85db-1aaf970bcf83" />
<img width="1914" height="1079" alt="image" src="https://github.com/user-attachments/assets/3c72dd41-4db3-40e1-a930-a747b7952d98" />

> The screenshots show environment and weather-system development previews. Visuals may change as the game evolves.

## Getting Started

### Requirements

- [Godot Engine 4.4](https://godotengine.org/download/) with **.NET support** recommended
- A desktop computer with support for Godot's **Forward Plus** renderer
- Git, if cloning the repository

The .NET edition is recommended because the bundled weather system uses C#, while gameplay logic is written in GDScript.

### Installation

1. Clone the repository:

   ```bash
   git clone https://github.com/yassine-mathlouthi/DevScreen.git
   ```

2. Enter the project directory:

   ```bash
   cd DevScreen
   ```

3. Open Godot and select **Import**.
4. Choose the repository's `project.godot` file.
5. Allow Godot to import the included models, textures, scenes, and scripts.
6. Press **F6** to run the current scene or **F5** to run the main scene.

## Controls

| Action | Input |
|---|---|
| Move forward | `W` |
| Move backward | `S` |
| Move left | `A` |
| Move right | `D` |
| Look around | Mouse |
| Run | `Shift` |
| Jump | `Space` |
| Shoot | Left mouse button |
| Interact with a door | `E` |

> The mouse is captured automatically when the game starts.

## Video Tutorial

Follow the development tutorial on YouTube:




**[Watch the tutorial on YouTube](https://www.youtube.com/watch?v=FyW4RXlowU0)**

## Project Structure

```text
DevScreen/
├── addons/GodotWeatherSystem/  # Weather controller, resources, particles, and shader
├── asstes/                     # Imported 3D models and textures
├── scene/                      # World, player, weapon, enemies, and environment scenes
├── scripts/                    # Gameplay and interaction scripts
├── screenshots/                # README and weather-system previews
├── project.godot               # Godot project configuration
├── WeatherSystem.csproj        # C# project for the weather system
└── WeatherSystem.sln           # C# solution
```

## Development Status

The project is currently in active development. Planned work includes:

- [ ] Expand zombie AI and combat behavior
- [ ] Add player health, damage, and game-over systems
- [ ] Add ammunition and reloading mechanics
- [ ] Improve level design and environmental detail
- [ ] Integrate and polish dynamic weather during gameplay
- [ ] Add sound effects, music, and user interface elements
- [ ] Test and prepare Android support
- [ ] Create production-ready desktop exports

## Contributing

Contributions, bug reports, and suggestions are welcome.

1. Fork the repository.
2. Create a branch for your change:

   ```bash
   git checkout -b feature/your-feature
   ```

3. Commit your changes.
4. Push the branch to your fork.
5. Open a pull request with a clear description of the change.

Please keep contributions focused and test scenes in Godot before submitting them.

## Credits

- Developed with [Godot Engine](https://godotengine.org/)
- Weather-system code is distributed under the included MIT license and credits **Matias Lavik**
- Development tutorial: [YouTube](https://www.youtube.com/watch?v=FyW4RXlowU0)

Third-party models, textures, animations, and other assets remain subject to their respective authors' licenses. Verify asset usage rights before redistributing a compiled release.

## License

This repository includes software distributed under the [MIT License](LICENSE).

---

<div align="center">

Made with Godot and a passion for game development.

</div>
