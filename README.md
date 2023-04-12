# series-episodes-generator
A random generator for episodes of the Series that I watch. It allows to set a season threshold.

## Installing it

```st
Metacello new
  repository: 'github://jordanmontt/series-episodes-generator:main';
  baseline: 'RandomEpisodeGenerator';
  load.
```

## Usage example

```st
SeinfeldGenerator new generate.
```

<img width="347" alt="Capture d’écran 2023-04-12 à 13 24 01" src="https://user-images.githubusercontent.com/33934979/231443026-404ceea3-4094-4785-996d-f1984f0a5bb7.png">

```st
TheSimpsonsGenerator new generate.
```

<img width="351" alt="Capture d’écran 2023-04-12 à 13 24 23" src="https://user-images.githubusercontent.com/33934979/231443108-07f92ce8-b2ea-47d6-9cbb-93b77e231f33.png">
