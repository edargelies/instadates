# instadates
Gets the dates from a file of instagram links.

##Required Software
This is to be run in the Mac OS X terminal

The 'jq' json parser is also required. It can be installed via homebrew:
```bash
brew install jq
```

If you don't already have homebrew, run this in the terminal:
```bash
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
```
After installing homebrew try to install jq again.

## Example Execution
In the terminal run the following:
```bash
sh get_timestamps.sh instainputs.txt
```
This will take the carriage return separated list of Instagram links in the instainputs.txt file and print the dates of each to a file named output.txt.

In the same manner, you can create any file of Instagram links and use it as an input to the script e.g.

```bash
sh get_timestamps.sh yourfilename
```
