# LiveG Emoji
A font for LiveG OS that provides colour emoji.

Licensed by the [LiveG Open-Source Licence and other licences](LICENCE.md).

## Prerequisites
Before building the LiveG Emoji font, you'll need to install the required software dependencies for Python and Node.js:

```bash
$ sudo apt-get install fonttools fontforge python3-fontforge
$ npm install
```

## Building
To build the LiveG Emoji font, run the following command:

```
./build.sh
```

This process will take a few minutes. Once the font has been built, it will be available at the path `build/LiveG Emoji.ttf`.

To install the font onto the current system, run:

```
./install.sh
```