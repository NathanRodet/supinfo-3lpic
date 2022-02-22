#!/bin/bash

uploadpath=/var/www/html/supdevoir.fr/upload
codefilepy=("$uploadpath"/*.py)
[[ -e $codefilepy ]] || { echo "Pas de fichier trouvé" >&2; exit 1;}

note=$(pylint $codefilepy | egrep '[0-9].[0-9]{2}/10'| awk '{print $7}')
echo $note

db_user='root'
db_pass='rootroot'
db_name='db'
table='notes'


mysql --user=$db_user --password=$db_pass $db_name << EOF
INSERT INTO $table (UserId, Note) VALUES (1, "$note");
EOF

rm -f $codefilepy
