name=John
surname=Doe
from="United State"
city="Ohio"

echo "name: $name"
echo "surname: $surname"
echo "country: $from city: $city"


VAR_PATH=$HOME
VAR=$USER
HOSTNAME=$HOSTNAME
FILE="touch.txt"


echo "$VAR_PATH"
echo "$VAR"
echo "$HOSTNAME"

ls "$VAR_PATH"
touch "$FILE"


ln -s hello.sh simple.sh
ls

echo "copy script text" >> simple.sh
cat simple.sh
exit


declare -r pwdfile=/etc/passwd
echo $pwdfile

$pwdfile=/etc/abc.txt
echo $pwdfile



echo "hello" "world" "text" "string"

echo "one" "two" "three"

echo "Hello World"

hello="hello world"

echo $hello

echo "one" "two" \
           "three" "five"
# tab
# line
echo -e "one\ttwo\tthree"
echo -e "one\ntwo\nthree"

echo "my favorite movie "leon""
echo "my favorite movie \"leon\""
echo "my favorite movie \"leon\"" > ./file.txt
echo "my favorite movie" >> ./file.txt


VAR="hello world"
echo $VAR

A="school"
B="book"

c="${A} ${B}"
echo "${c}"


exit

echo "hello" \
        "text" \
        "apple" \
        "orange"


echo -e "hello""\nhi"
echo -e "school\nhome"
echo "Lorem Ipsum is simply dummy" > ./file.txt
echo "Lorem Ipsum is simply dummy text of and typesetting industry" "\"the printing\""

a='lorem ipsum'
b='simply dummy text of the printing'

c="${a} ${b}"

echo "${c}"



echo -n "Hello"
echo "World"
echo -n "No"
echo "text"


VAR1="lorem ipsum"
VAR2="simply dummy text of the printing"

VAR1+="$VAR2"
echo "$VAR1"


TEXT=$(cat<<'END_HEREDOC'
lorem ipsum
simply dummy text
of the printing
END_HEREDOC
)

echo "$TEXT"


echo 'user ALL=(ALL:ALL) ALL' >> /etc/sudoers
