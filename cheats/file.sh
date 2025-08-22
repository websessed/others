
#rename all files from one .ext to another 
for f in *.old-ext; do mv "$f" "${f%.old-ext}.new-ext"; done 
#example usage: .txt files → .md
for f in *.txt; do mv "$f" "$(f%.txt).md"; done  


#count total LOC in entire folder 
find . | xargs wc -l
#for a particular folder name 
find folder-name | xargs wc -l 
#for a particular file extension 
find . -name "*.ext" | xargs wc -l
#in a file 
find file.ext | xargs wc -l 


#monitor live changes in a file 
tail -f file.ext


#--- vscode tricks --- 

#jump to a file lost in nested folders 
code path/to/file.ext
#or
code $(find . -name "file.ext") 
#or
code $(find . -path "*/folder/file.ext")

#jump to a specific line + column 
code -g file.ext:10:2

#open multiple files at once 
code file1.ext file2.ext

#grep for a string in a project & open first hit
code $(grep -rl "keyword" . | head -1)

#open all files containing a match 
code $(grep -rl "keyword" .)

#open most recently modified file
code $(ls -t | head -1)

#open all .ext files in a project
code $(find . name "*.ext")

