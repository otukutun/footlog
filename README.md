# Appname

## Usage
rename app
```
git grep -l 'module Appname'|xargs sed -i '' 's/Appname/Yourappname/g'
git grep -l 'appname'|xargs sed -i '' 's/appname/yourappname/g'
```
