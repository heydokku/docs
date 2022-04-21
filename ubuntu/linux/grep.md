[source](https://www.baeldung.com/linux/common-text-search)
g/re/p (globally search a regular expression and print).

- By default, grep outputs the matching lines

#### Basic String Search

```
grep 'linux' input.txt
```

##### Case-Insensitive Search
```
# we want to search lines containing “linux” or “Linux” —
grep -i 'linux' input.txt
```

### Whole-Word Search

```
grep -w 'is' input.txt
```

#### Regular Expressions

    BRE (Basic Regular Expressions)
    ERE (Extended Regular Expressions)
    PCRE (Perl Compatible Regular Expressions)

In GNU grep, there is no difference in functionality between the basic and extended syntaxes. However, PCRE gives additional functionality and is more powerful than both BRE and ERE.

By default, grep will use BRE. In BRE, the meta-characters ?, +, {, |, (, and ) lose their special meanings. We can use the backslash-escaped versions \?, \+, \{, \|, \(, and \) to make them have special meanings.

With the -E option, grep will work with ERE syntax. In ERE, the meta-characters we mentioned above have special meanings. If we backslash-escape them, they lose their special meanings.

Finally, the -P option will tell grep to do pattern matching with PCRE syntax.

### Fixed String Search


### Search lines that don’t contain a certain pattern

#### search in a directory recursively and find all files that contain some pattern.
