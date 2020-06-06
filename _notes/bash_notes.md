---
title: "Bash"
permalink: /notes/bash
excerpt: "Bash related tools to remember."
toc_label: "Bash TOC"
header:
    teaser: /assets/images/bash_teaser_image.png
    overlay_color: "#616261"
---

## Bash Tricks

### Ownership and Permissions
1. Change ownership of all files in a directory.
```bash
chown -R 1000:1000 ./*
```
1. Change permissions for all file in a directory.
```bash
chmod -R 774 ./*
```


`774` (three-digit octal number) or `rwx rwx r--` (r)ead (w)rite e(x)ecute characters.  The three-digit octal number is derived from the binary representation of e.g. `rwx` as `111` which equals 7 or another example `r--` read only, as `100` which equals 4 in binary.


Another example: `rwx r-x r--` = `111 101 100` = `7 5 4`


|user|group|other|
|---|---|---|
|rwx|rwx|r--|
|111|111|100|
|7|7|4|


This is useful for file generated in a NixOS container.  NixOS uses a complex set of ownership patterns during build.

#### 364 in decimal notation example:
|Decimal   |1000|100 |10  |1   |Total    |
|----------|----|----|----|----|---------|
|**Binary**|0   |3   |6   |4   |-        |
|**y or n**|no  |yes |no  |no  |-        |
|**Sum**   |0   |300 |60  |4   |= 364    |

#### 364 in binary notation (101101100):
|Decimal   |256 |128 |64  |32  |16  |8   |4   |2   |1   |Total    |
|----------|----|----|----|----|----|----|----|----|----|---------|
|**Binary**|1   |0   |1   |1   |0   |1   |1   |0   |0   |101101100|
|**y or n**|yes |no  |yes |yes |no  |yes |yes |no  |no  |-        |
|**Sum**   |256 |0   |64  |32  |0   |8   |4   |0   |0   |= 364    |
|----------|----|----|----|----|----|----|----|----|----|---------|
|**Binary**|0   |0   |0   |0   |0   |0   |1   |1   |1   |101101100|
|**y or n**|no  |no  |no  |no  |no  |no  |yes |yes |yes |-        |
|**Sum**   |0   |0   |0   |0   |0   |0   |4   |2   |1   |= 7      |



### Removing Docker Containers

1. Pipe contianer ID's to text file.
```bash
docker ps -a -q > containers.txt
```

2. Edit containers.txt and remove the container ID's you wish to keep.
```bash
vim containers.txt
```

3. Loop through containers.txt line by line.
```bash
while read c; do
  docker rm "$c"
done < containers.txt
```

### Create Multiple Files

1. Create a list of file names:
```bash
lst="Sphere Cube Cuboid"
```

2. Use `for` loop to iterate over `$lst`.
```bash
for i in $lst; do touch "$i".hs; done
```
3. `unset lst` to remove the variable.


### Command Line Hacks

```bash
curl https://image.shutterstock.com/image-vector/cute-frog-cartoon-260nw-366900380.jpg --ouput frog.jpg
```

```bash
touch hello.txt && echo "I am a dev" >> hello.txt
```

- Create variable with a name, make a directory and cd into that directory
```bash
p=practice && mkdir "$p" && cd "$p"
```
