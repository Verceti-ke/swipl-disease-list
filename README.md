[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT)

# SWI-Prolog

Provide functions to read symptoms, write possible illness and associated tests and treatments of disease list using [SWI-Prolog](http://www.swi-prolog.org/).

This program was created for CS355: Principles of Programming Languages at Old Dominion University.

## Usage

You will need [SWI-Prolog](http://www.swi-prolog.org/)
```
sudo apt install swi-prolog
```

To start run the following from the src directory and consult the diseases dictionary
```
$ swipl -s analyzer.pl

?- consult('diseases.pl').
```

### Example

```
$ swipl -s analyzer.pl

?- consult('diseases.pl').
true.

?- howtotest(typhoid).
blood
true.
```
Enter `halt.` to exit SWI-Prolog.

## Versioning

We use [SemVer](http://semver.org/) for versioning. For the versions available, see the [tags on this repository]().

## Authors

* **Patrick Cox** - *Contributor* - [paddy74](https://github.com/paddy74)

## License

This project is licensed under the MIT License - See the [LICENSE.md](LICENSE.md) file for details.

## Acknowledgments
* The course professor [Jay Morris](http://www.cs.odu.edu/~jdm/)
