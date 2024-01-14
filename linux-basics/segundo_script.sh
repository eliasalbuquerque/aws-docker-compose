# hello world in second script:
# echo 'olá mundo do segundo script'

# excuting the script from another script:
echo Listando diretórios...
sleep 1

# take the name of directory:

# current directory
# dir=${PWD##*/} 

# directory above
parent_dir=${PWD%/*}
parent_dir_name=${parent_dir##*/}


# list content in directory
content=$(ls ..)
echo As pastas do diretório \"$parent_dir_name\" são: 
echo $content

sleep 1

