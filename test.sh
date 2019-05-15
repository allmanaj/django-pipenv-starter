line=$(find . -name wsgi.py -print0 | xargs -0 grep "DJANGO_SETTINGS_MODULE")
line=$(echo $line | cut -d "(" -f2 | cut -d ")" -f1)
line=$(echo "$line" | sed "s/, /:/g")
line=$(echo "$line" | sed "s/'//g")
echo "$line" | cut -f 2 -d ':'
