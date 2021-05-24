[![Build Status](https://travis-ci.com/Doyal-N/maxon.svg?branch=main)](https://travis-ci.com/github/Doyal-N/maxon)

# Maxon
![поиск цифр](https://github.com/Doyal-N/maxon/raw/main/num.jpg)

Script finds n largest numbers.

## Getting started

```
git clone git@github.com:Doyal-N/maxon.git
cd maxon
export PATH="./bin:$PATH"
cat 'filename' | maxon n
```

n - this your parametr

### Modes

Script has 2 modes:

1. Light - ```cat 'filename' | maxon 100```
2. Deep - ```cat 'filename' | maxon 100 'any symbol'```

Light - extracts only free-standing digits that are separated by a space on both sides

Deep - extracts numbers and inside text too

### Requirements
This gem requires Ruby 2.5+
