<!--
Copyright © 2022 The OSRD Contributors

SPDX-License-Identifier: LGPL-3.0-only
-->

<p align="center">
  <a href="https://osrd.fr/en/">
    <picture>
      <source media="(prefers-color-scheme: dark)" srcset="https://raw.githubusercontent.com/OpenRailAssociation/osrd/dev/assets/branding/osrd_small_dark.svg">
      <img width="340px" style="max-width: 100%;" src="https://raw.githubusercontent.com/OpenRailAssociation/osrd/dev/assets/branding/osrd_small.svg" alt="OSRD Logo" alt="OSRD logo">
    </picture>
  </a>
&nbsp;&nbsp;
  <a href="https://publiccode.eu/">
    <img src="assets/PMPC_badge.svg" width="110px" alt="Public Money Public Code"/>
  </a>
</p>

<p align="center">
  <a href="https://osrd.fr/en/docs/guides/contribute/"><img src="https://img.shields.io/github/contributors-anon/OpenRailAssociation/osrd-images" alt="Contributors badge" /></a>
  <a href="https://github.com/OpenRailAssociation/osrd/blob/dev/LICENSE"><img src="https://img.shields.io/badge/license-LGPL-blue.svg" alt="LGPL License badge" /></a>
</p>

## OSRD-IMAGES

This repository is used to supply (royalty-free) images to OSRD for default
operational study project images.

Check out: [OSRD primary repository](https://github.com/OpenRailAssociation/osrd) stack.

## Getting Started

Build osrd-images with an example infrastructure:

```sh
docker build -t osrd-images .
```

Run osrd-images on port 8080

```sh
docker run -p -d 8080:80 osrd-images
```

Test the server response and check that the schema of the json file `image_path.json` matches the structure of the src folder 

```sh
curl https://localhost:8080/image_path.json
```

## Add a new category of images

To add new image categories, you must :
- Add a new folder named after the category in the ```/src``` folder.
- Add an image representing the category (```category.png``` or ```category.jpeg``` or category.jpg) with its ```.license``` file in the ```/src``` folder.
- Add the images in each category with their ```.license``` files

### Requirements

 <img src="assets/dimensions_and_weight.png" alt="Dimensions and weightt"/>

Added images must have a 3:2 aspect ratio. 
For the moment, the dimensions and sizes accepted are those shown in the image below. <br>
The recommended format is <strong> medium</strong>. 
## Get in touch

Send an email at <contact@osrd.fr>, [open an issue](https://github.com/OpenRailAssociation/osrd/issues/new?labels=kind%3Aquestion&template=question.yaml), or join the [#public-general:osrd.fr](https://matrix.to/#/#public-general:osrd.fr) matrix channel.

## Sponsors

<p align="center">
  <img src="https://raw.githubusercontent.com/OpenRailAssociation/osrd/dev/assets/sponsors/france-dot.svg" width="150px" height="150px" alt="Ministère chargé des Transports"/>
  <img src="https://raw.githubusercontent.com/OpenRailAssociation/osrd/dev/assets/sponsors/european-union.svg" width="150px" height="150px" alt="European Union"/>
  <img src="https://raw.githubusercontent.com/OpenRailAssociation/osrd/dev/assets/sponsors/sncf-reseau.svg" width="150px" height="150px" alt="SNCF Réseau"/>
</p>

## License

OSRD is licensed under the GNU Lesser General Public License v3.0, see LICENSE.

Copyright © 2022 The OSRD Contributors
