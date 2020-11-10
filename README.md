# Utilities/Bash Scripts

A collection of bash scripts to perform common installs on Ubuntu machines. I've tried to keep most of the installation as dynamic as possible in order to keep things updated, but some still have static version numbers.

## Install All

All directories have a "install-all.sh" script (including the root directory) for convenience, with install scripts ordered when a package has dependencies on another package. Run installs always prepended with `sudo`, such as:

```sh
$sudo apt-get install docker/install-all.sh
```

## Directory Tree
```sh
.
├── docker-scripts
│   ├── install-docker-compose.sh
│   ├── install-docker-machine.sh
│   ├── install-docker.sh
│   └── README.md
├── nodejs-scripts
│   └── install-nodejs.sh
└── README.md

2 directories, 6 files
```

## Static Versions:

These are the packages with a static version, which might need to be manually updated in the future in order to work. All others are set up in a way to get the most updated package already.

| Technology | Package/Version |
| ------ | ------ |
| Docker | docker-machine/0.16.0 |