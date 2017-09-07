# .bin

Some utils useful to work on an EPITECH project

## FINAL TOOLS

- norme - **Check norm** - *Not mine but useful for every student*
- CMake - **Create a Makefile for C programming**
- CPPMake - **Create a Makefile for C++ programming**
- mr_clean - **Remove temporary files** - *\*~ and \*.o*
- prepare_my_repo - **Create a new repository with rights set**
- archive - **Create an archive of a file/directory**

## Getting Started

### Prerequisites

These script are made to be used on Bash with Blih installed on.

To install Blih (and most of EPITECH configurations and composants), check [this](https://github.com/kayofeld/script-installation-ordinateur-epitech).

### Installation

To install this directory, first open a terminal, then:

- Clone this repository:
```
git clone git@github.com:TiphaineLAURENT/.bin.git
```

- Make it accessible to your environnement by adding his path to your PATH:
```
echo -e "export PATH=\$PATH":~/.bin"" >> ~/.bashrc
```

## USAGE

### norme

Check the norme in the current directory.
```
norme
```

### CMake

Create a Makefile designed for C programming.
```
CMake
```

### CPPMake

Create a Makefile designed for C++ programming.
```
CPPMake
```

### mr_clean

Hide files deleted.
```
mr_clean -h
```

Keep files.
```
mr_clean -k
```

Do basically nothing but still work.
```
mr_clean -h -k
```

### prepare_my_repo

Create myrepo repository and set right for reading and writing to myfriend_1 and my_friend_2.
```
prepare_my_repo myrepo myfriend_1 my_friend_2
```

### archive

Create an archive of the desired file/directory.
This do not check if an archive of the same name already exist.
```
archive mydir/myfile
```

## Authors

* **Tiphaine LAURENT** - *All my work at* [Github](https://github.com/TiphaineLAURENT)

See also the list of [contributors](https://github.com/TiphaineLAURENT/.bin/contributors) who participated in this project.
