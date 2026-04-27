# Bash / Zsh Shell Commands

Useful shell commands, flags, and examples.

## grep

	Search for lines matching a pattern in files.

	Common flags:

	```txt
	-i	case-insensitive search
	-r	recursive search
	-v	invert match
	-n	show line numbers
	```

	Example:

	```bash
	grep -r "error" /var/log/
	```

## find

	Locate files and directories.

	Common flags:

	```txt
	-name	match by name
	-type	filter by type: f for file, d for directory
	-mtime	filter by modification time
	-exec	run command on matches
	```

	Example:

	```bash
	find . -name "*.py" -exec grep -l "import os" {} \;
	```

## awk

	Process structured text, especially columns.

	Common usage:

	```txt
	-F	set field separator
	$1	first field
	$2	second field
	NR	line number
	```

	Example:

	```bash
	awk -F',' '{print $1, $3}' data.csv
	```

## sed

	Transform text in streams or files.

	Common usage:

	```txt
	s/old/new/	substitute text
	g		global replacement
	-i		edit file in-place
	```

	Example:

	```bash
	sed -i 's/http:/https:/g' config.txt
	```

	Find and replace a string in all files recursively:

	```bash
	find . -type f -exec sed -i 's/old/new/g' {} +
	```

## Often used commands

### Cat all files in current directory only

	Shows the content of all files in the current directory, but not files inside subdirectories.

	```bash
	find . -maxdepth 1 -type f -exec cat {} \;
	```

### Combine files and skip lines starting with `/*`
	Useful when you do not want to copy some header comment lines.
	```bash
	find . -type f -name "*.c" -exec sh -c 'echo "=== $1 ==="; cat "$1" | grep -v "^ */\*"' sh {} \; > combined.c




## Notes

	Use `\;` when `find -exec` should run once per file.

	Use `+` when `find -exec` can pass many files at once.

	Use functions instead of aliases for complex commands.
