#!/usr/bin/env bash

mkdir -p example-monotonic-repo
pushd example-monotonic-repo

git init
git commit --allow-empty -m ">>>> This is a beginning of a beautiful friendship <<<<"

git branch Rammstein-Du_hast
git branch Rick_Astley-Never_Gonna_Give_You_Up
git branch Aqua-Baribie_Girl

function add_a_new_line_to_file() {
	local file=$1
	local line=$2
	local branch=$3

	git checkout $branch

	local message=$2
	if [[ -z $line ]]; then
		message="."
	fi

	echo $line >> $file

	git add $file

	git commit -m "$message"
}

add_a_new_line_to_file "rick.txt" "Never gonna say goodbye" "Rick_Astley-Never_Gonna_Give_You_Up"
add_a_new_line_to_file "rick.txt" "Never gonna make you cry" "Rick_Astley-Never_Gonna_Give_You_Up"
add_a_new_line_to_file "rick.txt" "Never gonna run around and desert you" "Rick_Astley-Never_Gonna_Give_You_Up"
add_a_new_line_to_file "rick.txt" "Never gonna let you down" "Rick_Astley-Never_Gonna_Give_You_Up"
add_a_new_line_to_file "rick.txt" "Never gonna give you up" "Rick_Astley-Never_Gonna_Give_You_Up"
add_a_new_line_to_file "rick.txt" "" "Rick_Astley-Never_Gonna_Give_You_Up"

add_a_new_line_to_file "du-hast.txt" "Nein" "Rammstein-Du_hast"
add_a_new_line_to_file "du-hast.txt" "Nein" "Rammstein-Du_hast"

add_a_new_line_to_file "auqa.txt" "Oh, I love you, Ken" "Aqua-Baribie_Girl"
add_a_new_line_to_file "auqa.txt" "Well, Barbie, we are just getting started" "Aqua-Baribie_Girl"
add_a_new_line_to_file "auqa.txt" "Oh, I'm having so much fun" "Aqua-Baribie_Girl"

add_a_new_line_to_file "rick.txt" "Never gonna tell a lie and hurt you" "Rick_Astley-Never_Gonna_Give_You_Up"
add_a_new_line_to_file "rick.txt" "Never gonna say goodbye" "Rick_Astley-Never_Gonna_Give_You_Up"
add_a_new_line_to_file "rick.txt" "Never gonna make you cry" "Rick_Astley-Never_Gonna_Give_You_Up"
add_a_new_line_to_file "rick.txt" "Never gonna run around and desert you" "Rick_Astley-Never_Gonna_Give_You_Up"
add_a_new_line_to_file "rick.txt" "Never gonna let you down" "Rick_Astley-Never_Gonna_Give_You_Up"
add_a_new_line_to_file "rick.txt" "Never gonna give you up" "Rick_Astley-Never_Gonna_Give_You_Up"
add_a_new_line_to_file "rick.txt" "Never gonna tell a lie and hurt you" "Rick_Astley-Never_Gonna_Give_You_Up"
add_a_new_line_to_file "rick.txt" "Never gonna say goodbye" "Rick_Astley-Never_Gonna_Give_You_Up"
add_a_new_line_to_file "rick.txt" "Never gonna make you cry" "Rick_Astley-Never_Gonna_Give_You_Up"
add_a_new_line_to_file "rick.txt" "Never gonna run around and desert you" "Rick_Astley-Never_Gonna_Give_You_Up"
add_a_new_line_to_file "rick.txt" "Never gonna let you down" "Rick_Astley-Never_Gonna_Give_You_Up"
add_a_new_line_to_file "rick.txt" "Never gonna give you up" "Rick_Astley-Never_Gonna_Give_You_Up"
add_a_new_line_to_file "rick.txt" "" "Rick_Astley-Never_Gonna_Give_You_Up"

add_a_new_line_to_file "du-hast.txt" "" "Rammstein-Du_hast"
add_a_new_line_to_file "du-hast.txt" "Treu ihr sein" "Rammstein-Du_hast"
add_a_new_line_to_file "du-hast.txt" "Willst du bis der Tod euch scheidet" "Rammstein-Du_hast"

add_a_new_line_to_file "auqa.txt" "" "Aqua-Baribie_Girl"
add_a_new_line_to_file "auqa.txt" "Come on, Barbie, let's go party (ooh oh, ooh oh)" "Aqua-Baribie_Girl"
add_a_new_line_to_file "auqa.txt" "Come on, Barbie, let's go party (ah ah ah yeah)" "Aqua-Baribie_Girl"
add_a_new_line_to_file "auqa.txt" "Come on, Barbie, let's go party (ooh oh, ooh oh)" "Aqua-Baribie_Girl"
add_a_new_line_to_file "auqa.txt" "Come on, Barbie, let's go party (ah ah ah yeah)" "Aqua-Baribie_Girl"

add_a_new_line_to_file "rick.txt" "Gotta make you understand" "Rick_Astley-Never_Gonna_Give_You_Up"
add_a_new_line_to_file "rick.txt" "I just wanna tell you how I'm feeling" "Rick_Astley-Never_Gonna_Give_You_Up"
add_a_new_line_to_file "rick.txt" "" "Rick_Astley-Never_Gonna_Give_You_Up"

add_a_new_line_to_file "du-hast.txt" "" "Rammstein-Du_hast"
add_a_new_line_to_file "du-hast.txt" "Nein" "Rammstein-Du_hast"
add_a_new_line_to_file "du-hast.txt" "Nein" "Rammstein-Du_hast"

add_a_new_line_to_file "auqa.txt" "" "Aqua-Baribie_Girl"
add_a_new_line_to_file "auqa.txt" "Imagination, life is your creation" "Aqua-Baribie_Girl"
add_a_new_line_to_file "auqa.txt" "You can brush my hair, undress me everywhere" "Aqua-Baribie_Girl"
add_a_new_line_to_file "auqa.txt" "Life in plastic, it's fantastic" "Aqua-Baribie_Girl"
add_a_new_line_to_file "auqa.txt" "I'm a Barbie girl, in the Barbie world" "Aqua-Baribie_Girl"

add_a_new_line_to_file "rick.txt" "We know the game and we're gonna play it" "Rick_Astley-Never_Gonna_Give_You_Up"
add_a_new_line_to_file "rick.txt" "Inside we both know what's been going on" "Rick_Astley-Never_Gonna_Give_You_Up"
add_a_new_line_to_file "rick.txt" "Your heart's been aching but you're too shy to say it" "Rick_Astley-Never_Gonna_Give_You_Up"
add_a_new_line_to_file "rick.txt" "We've known each other for so long" "Rick_Astley-Never_Gonna_Give_You_Up"
add_a_new_line_to_file "rick.txt" "" "Rick_Astley-Never_Gonna_Give_You_Up"

add_a_new_line_to_file "du-hast.txt" "" "Rammstein-Du_hast"
add_a_new_line_to_file "du-hast.txt" "Sie lieben auch in schlechten Tagen" "Rammstein-Du_hast"
add_a_new_line_to_file "du-hast.txt" "Willst du bis zum Tod, der scheidet" "Rammstein-Du_hast"

add_a_new_line_to_file "auqa.txt" "" "Aqua-Baribie_Girl"
add_a_new_line_to_file "auqa.txt" "Imagination, life is your creation" "Aqua-Baribie_Girl"
add_a_new_line_to_file "auqa.txt" "You can brush my hair, undress me everywhere" "Aqua-Baribie_Girl"
add_a_new_line_to_file "auqa.txt" "Life in plastic, it's fantastic" "Aqua-Baribie_Girl"
add_a_new_line_to_file "auqa.txt" "I'm a Barbie girl, in the Barbie world" "Aqua-Baribie_Girl"

add_a_new_line_to_file "rick.txt" "(Give you up)" "Rick_Astley-Never_Gonna_Give_You_Up"
add_a_new_line_to_file "rick.txt" "Never gonna give, never gonna give" "Rick_Astley-Never_Gonna_Give_You_Up"
add_a_new_line_to_file "rick.txt" "" "Rick_Astley-Never_Gonna_Give_You_Up"

add_a_new_line_to_file "du-hast.txt" "" "Rammstein-Du_hast"
add_a_new_line_to_file "du-hast.txt" "Nein" "Rammstein-Du_hast"
add_a_new_line_to_file "du-hast.txt" "Nein" "Rammstein-Du_hast"

add_a_new_line_to_file "auqa.txt" "" "Aqua-Baribie_Girl"
add_a_new_line_to_file "auqa.txt" "Come on, Barbie, let's go party (ooh oh, ooh oh)" "Aqua-Baribie_Girl"
add_a_new_line_to_file "auqa.txt" "Come on, Barbie, let's go party (ah ah ah yeah)" "Aqua-Baribie_Girl"
add_a_new_line_to_file "auqa.txt" "Come on, Barbie, let's go party (ooh oh, ooh oh)" "Aqua-Baribie_Girl"
add_a_new_line_to_file "auqa.txt" "Come on, Barbie, let's go party (ah ah ah yeah)" "Aqua-Baribie_Girl"

add_a_new_line_to_file "rick.txt" "Never gonna tell a lie and hurt you" "Rick_Astley-Never_Gonna_Give_You_Up"
add_a_new_line_to_file "rick.txt" "Never gonna say goodbye" "Rick_Astley-Never_Gonna_Give_You_Up"
add_a_new_line_to_file "rick.txt" "Never gonna make you cry" "Rick_Astley-Never_Gonna_Give_You_Up"
add_a_new_line_to_file "rick.txt" "Never gonna run around and desert you" "Rick_Astley-Never_Gonna_Give_You_Up"
add_a_new_line_to_file "rick.txt" "Never gonna let you down" "Rick_Astley-Never_Gonna_Give_You_Up"
add_a_new_line_to_file "rick.txt" "Never gonna give you up" "Rick_Astley-Never_Gonna_Give_You_Up"
add_a_new_line_to_file "rick.txt" "Never gonna tell a lie and hurt you" "Rick_Astley-Never_Gonna_Give_You_Up"
add_a_new_line_to_file "rick.txt" "Never gonna say goodbye" "Rick_Astley-Never_Gonna_Give_You_Up"
add_a_new_line_to_file "rick.txt" "Never gonna make you cry" "Rick_Astley-Never_Gonna_Give_You_Up"
add_a_new_line_to_file "rick.txt" "Never gonna run around and desert you" "Rick_Astley-Never_Gonna_Give_You_Up"
add_a_new_line_to_file "rick.txt" "Never gonna let you down" "Rick_Astley-Never_Gonna_Give_You_Up"
add_a_new_line_to_file "rick.txt" "Never gonna give you up" "Rick_Astley-Never_Gonna_Give_You_Up"
add_a_new_line_to_file "rick.txt" "" "Rick_Astley-Never_Gonna_Give_You_Up"

add_a_new_line_to_file "du-hast.txt" "" "Rammstein-Du_hast"
add_a_new_line_to_file "du-hast.txt" "Treu ihr sein für alle Tage" "Rammstein-Du_hast"
add_a_new_line_to_file "du-hast.txt" "Willst du bis der Tod euch scheidet" "Rammstein-Du_hast"

add_a_new_line_to_file "auqa.txt" "" "Aqua-Baribie_Girl"
add_a_new_line_to_file "auqa.txt" "If you say, \"I'm always yours\"" "Aqua-Baribie_Girl"
add_a_new_line_to_file "auqa.txt" "You can play" "Aqua-Baribie_Girl"
add_a_new_line_to_file "auqa.txt" "You can touch" "Aqua-Baribie_Girl"
add_a_new_line_to_file "auqa.txt" "If you say, \"I'm always yours\"" "Aqua-Baribie_Girl"
add_a_new_line_to_file "auqa.txt" "You can play" "Aqua-Baribie_Girl"
add_a_new_line_to_file "auqa.txt" "You can touch" "Aqua-Baribie_Girl"

add_a_new_line_to_file "rick.txt" "Don't tell me you're too blind to see" "Rick_Astley-Never_Gonna_Give_You_Up"
add_a_new_line_to_file "rick.txt" "And if you ask me how I'm feeling" "Rick_Astley-Never_Gonna_Give_You_Up"
add_a_new_line_to_file "rick.txt" "We know the game and we're gonna play it" "Rick_Astley-Never_Gonna_Give_You_Up"
add_a_new_line_to_file "rick.txt" "Inside we both know what's been going on" "Rick_Astley-Never_Gonna_Give_You_Up"
add_a_new_line_to_file "rick.txt" "Your heart's been aching but you're too shy to say it" "Rick_Astley-Never_Gonna_Give_You_Up"
add_a_new_line_to_file "rick.txt" "We've known each other for so long" "Rick_Astley-Never_Gonna_Give_You_Up"
add_a_new_line_to_file "rick.txt" "" "Rick_Astley-Never_Gonna_Give_You_Up"

add_a_new_line_to_file "du-hast.txt" "" "Rammstein-Du_hast"
add_a_new_line_to_file "du-hast.txt" "Du hast mich gefragt und ich hab' nichts gesagt" "Rammstein-Du_hast"
add_a_new_line_to_file "du-hast.txt" "Du hast mich gefragt" "Rammstein-Du_hast"
add_a_new_line_to_file "du-hast.txt" "Du hast mich gefragt" "Rammstein-Du_hast"
add_a_new_line_to_file "du-hast.txt" "Du hast mich" "Rammstein-Du_hast"
add_a_new_line_to_file "du-hast.txt" "Du hast mich" "Rammstein-Du_hast"
add_a_new_line_to_file "du-hast.txt" "Du hast" "Rammstein-Du_hast"
add_a_new_line_to_file "du-hast.txt" "Du" "Rammstein-Du_hast"

add_a_new_line_to_file "auqa.txt" "" "Aqua-Baribie_Girl"
add_a_new_line_to_file "auqa.txt" "Hit the town, fool around, let's go party" "Aqua-Baribie_Girl"
add_a_new_line_to_file "auqa.txt" "Come jump in, bimbo friend, let us do it again" "Aqua-Baribie_Girl"
add_a_new_line_to_file "auqa.txt" "I can act like a star, I can beg on my knees" "Aqua-Baribie_Girl"
add_a_new_line_to_file "auqa.txt" "Make me walk, make me talk, do whatever you please" "Aqua-Baribie_Girl"

add_a_new_line_to_file "rick.txt" "Never gonna tell a lie and hurt you" "Rick_Astley-Never_Gonna_Give_You_Up"
add_a_new_line_to_file "rick.txt" "Never gonna say goodbye" "Rick_Astley-Never_Gonna_Give_You_Up"
add_a_new_line_to_file "rick.txt" "Never gonna make you cry" "Rick_Astley-Never_Gonna_Give_You_Up"
add_a_new_line_to_file "rick.txt" "Never gonna run around and desert you" "Rick_Astley-Never_Gonna_Give_You_Up"
add_a_new_line_to_file "rick.txt" "Never gonna let you down" "Rick_Astley-Never_Gonna_Give_You_Up"
add_a_new_line_to_file "rick.txt" "Never gonna give you up" "Rick_Astley-Never_Gonna_Give_You_Up"
add_a_new_line_to_file "rick.txt" "" "Rick_Astley-Never_Gonna_Give_You_Up"

add_a_new_line_to_file "du-hast.txt" "" "Rammstein-Du_hast"
add_a_new_line_to_file "du-hast.txt" "Du hast mich" "Rammstein-Du_hast"
add_a_new_line_to_file "du-hast.txt" "Du hast" "Rammstein-Du_hast"
add_a_new_line_to_file "du-hast.txt" "Du" "Rammstein-Du_hast"

add_a_new_line_to_file "auqa.txt" "" "Aqua-Baribie_Girl"
add_a_new_line_to_file "auqa.txt" "Come on, Barbie, let's go party (ooh oh, ooh oh)" "Aqua-Baribie_Girl"
add_a_new_line_to_file "auqa.txt" "Come on, Barbie, let's go party (ah ah ah yeah)" "Aqua-Baribie_Girl"
add_a_new_line_to_file "auqa.txt" "Come on, Barbie, let's go party (ooh oh, ooh oh)" "Aqua-Baribie_Girl"
add_a_new_line_to_file "auqa.txt" "Come on, Barbie, let's go party (ah ah ah yeah)" "Aqua-Baribie_Girl"

add_a_new_line_to_file "rick.txt" "Gotta make you understand" "Rick_Astley-Never_Gonna_Give_You_Up"
add_a_new_line_to_file "rick.txt" "I just wanna tell you how I'm feeling" "Rick_Astley-Never_Gonna_Give_You_Up"
add_a_new_line_to_file "rick.txt" "" "Rick_Astley-Never_Gonna_Give_You_Up"

add_a_new_line_to_file "du-hast.txt" "" "Rammstein-Du_hast"
add_a_new_line_to_file "du-hast.txt" "Du hast mich" "Rammstein-Du_hast"
add_a_new_line_to_file "du-hast.txt" "Du hast" "Rammstein-Du_hast"
add_a_new_line_to_file "du-hast.txt" "Du" "Rammstein-Du_hast"

add_a_new_line_to_file "auqa.txt" "" "Aqua-Baribie_Girl"
add_a_new_line_to_file "auqa.txt" "Imagination, life is your creation" "Aqua-Baribie_Girl"
add_a_new_line_to_file "auqa.txt" "You can brush my hair, undress me everywhere" "Aqua-Baribie_Girl"
add_a_new_line_to_file "auqa.txt" "Life in plastic, it's fantastic" "Aqua-Baribie_Girl"
add_a_new_line_to_file "auqa.txt" "I'm a Barbie girl, in the Barbie world" "Aqua-Baribie_Girl"

add_a_new_line_to_file "rick.txt" "You wouldn't get this from any other guy" "Rick_Astley-Never_Gonna_Give_You_Up"
add_a_new_line_to_file "rick.txt" "A full commitment's what I'm thinking of" "Rick_Astley-Never_Gonna_Give_You_Up"
add_a_new_line_to_file "rick.txt" "You know the rules and so do I" "Rick_Astley-Never_Gonna_Give_You_Up"
add_a_new_line_to_file "rick.txt" "We're no strangers to love" "Rick_Astley-Never_Gonna_Give_You_Up"

git checkout Rick_Astley-Never_Gonna_Give_You_Up; git rebase master
git checkout master; git merge --no-edit  --no-ff Rick_Astley-Never_Gonna_Give_You_Up

git branch Captain_Jack-Captain_Jack
git checkout Rammstein-Du_hast; git rebase master

add_a_new_line_to_file "jack.txt" "The seventeen is the best" "Captain_Jack-Captain_Jack"
add_a_new_line_to_file "jack.txt" "(The air force rap)" "Captain_Jack-Captain_Jack"
add_a_new_line_to_file "jack.txt" "The air force rap" "Captain_Jack-Captain_Jack"
add_a_new_line_to_file "jack.txt" "(The military step)" "Captain_Jack-Captain_Jack"
add_a_new_line_to_file "jack.txt" "The military step" "Captain_Jack-Captain_Jack"

add_a_new_line_to_file "du-hast.txt" "" "Rammstein-Du_hast"
add_a_new_line_to_file "du-hast.txt" "Nein" "Rammstein-Du_hast"
add_a_new_line_to_file "du-hast.txt" "Nein" "Rammstein-Du_hast"

add_a_new_line_to_file "auqa.txt" "" "Aqua-Baribie_Girl"
add_a_new_line_to_file "auqa.txt" "If you say, \"I'm always yours\" (ooh, oh)" "Aqua-Baribie_Girl"
add_a_new_line_to_file "auqa.txt" "You can play" "Aqua-Baribie_Girl"
add_a_new_line_to_file "auqa.txt" "You can touch" "Aqua-Baribie_Girl"

add_a_new_line_to_file "jack.txt" "" "Captain_Jack-Captain_Jack"
add_a_new_line_to_file "jack.txt" "Left, right, left" "Captain_Jack-Captain_Jack"

add_a_new_line_to_file "du-hast.txt" "" "Rammstein-Du_hast"
add_a_new_line_to_file "du-hast.txt" "Treu ihr sein für alle Tage" "Rammstein-Du_hast"
add_a_new_line_to_file "du-hast.txt" "Willst du bis der Tod euch scheidet" "Rammstein-Du_hast"

add_a_new_line_to_file "auqa.txt" "" "Aqua-Baribie_Girl"
add_a_new_line_to_file "auqa.txt" "Kiss me here, touch me there, hanky panky" "Aqua-Baribie_Girl"
add_a_new_line_to_file "auqa.txt" "You're my doll, rock'n'roll, feel the glamour in pink" "Aqua-Baribie_Girl"
add_a_new_line_to_file "auqa.txt" "Dress me up, make it tight, I'm your dolly" "Aqua-Baribie_Girl"
add_a_new_line_to_file "auqa.txt" "I'm a blond bimbo girl in a fantasy world" "Aqua-Baribie_Girl"

add_a_new_line_to_file "jack.txt" "" "Captain_Jack-Captain_Jack"
add_a_new_line_to_file "jack.txt" "I want to be a shootin man" "Captain_Jack-Captain_Jack"

add_a_new_line_to_file "du-hast.txt" "" "Rammstein-Du_hast"
add_a_new_line_to_file "du-hast.txt" "Nein" "Rammstein-Du_hast"
add_a_new_line_to_file "du-hast.txt" "Nein" "Rammstein-Du_hast"

add_a_new_line_to_file "auqa.txt" "" "Aqua-Baribie_Girl"
add_a_new_line_to_file "auqa.txt" "Imagination, life is your creation" "Aqua-Baribie_Girl"
add_a_new_line_to_file "auqa.txt" "You can brush my hair, undress me everywhere" "Aqua-Baribie_Girl"
add_a_new_line_to_file "auqa.txt" "Life in plastic, it's fantastic" "Aqua-Baribie_Girl"
add_a_new_line_to_file "auqa.txt" "I'm a Barbie girl, in the Barbie world" "Aqua-Baribie_Girl"

add_a_new_line_to_file "jack.txt" "" "Captain_Jack-Captain_Jack"
add_a_new_line_to_file "jack.txt" "Gimme a gun in my hand" "Captain_Jack-Captain_Jack"

add_a_new_line_to_file "du-hast.txt" "" "Rammstein-Du_hast"
add_a_new_line_to_file "du-hast.txt" "Treu ihr sein für alle Tage" "Rammstein-Du_hast"
add_a_new_line_to_file "du-hast.txt" "Willst du bis der Tod euch scheidet" "Rammstein-Du_hast"

add_a_new_line_to_file "auqa.txt" "" "Aqua-Baribie_Girl"
add_a_new_line_to_file "auqa.txt" "Come on, Barbie, let's go party" "Aqua-Baribie_Girl"

add_a_new_line_to_file "jack.txt" "" "Captain_Jack-Captain_Jack"
add_a_new_line_to_file "jack.txt" "Bring me back to the railroad track" "Captain_Jack-Captain_Jack"

add_a_new_line_to_file "du-hast.txt" "" "Rammstein-Du_hast"
add_a_new_line_to_file "du-hast.txt" "Du hast mich gefragt und ich hab' nichts gesagt" "Rammstein-Du_hast"
add_a_new_line_to_file "du-hast.txt" "Du hast mich gefragt" "Rammstein-Du_hast"
add_a_new_line_to_file "du-hast.txt" "Du hast mich gefragt" "Rammstein-Du_hast"
add_a_new_line_to_file "du-hast.txt" "Du hast mich" "Rammstein-Du_hast"
add_a_new_line_to_file "du-hast.txt" "Du hast mich" "Rammstein-Du_hast"
add_a_new_line_to_file "du-hast.txt" "Du hast" "Rammstein-Du_hast"
add_a_new_line_to_file "du-hast.txt" "Du" "Rammstein-Du_hast"

add_a_new_line_to_file "auqa.txt" "" "Aqua-Baribie_Girl"
add_a_new_line_to_file "auqa.txt" "Imagination, life is your creation" "Aqua-Baribie_Girl"
add_a_new_line_to_file "auqa.txt" "You can brush my hair, undress me everywhere" "Aqua-Baribie_Girl"
add_a_new_line_to_file "auqa.txt" "Life in plastic, it's fantastic" "Aqua-Baribie_Girl"
add_a_new_line_to_file "auqa.txt" "I'm a Barbie girl, in the Barbie world" "Aqua-Baribie_Girl"

add_a_new_line_to_file "jack.txt" "" "Captain_Jack-Captain_Jack"
add_a_new_line_to_file "jack.txt" "Hey yo Captain Jack" "Captain_Jack-Captain_Jack"
add_a_new_line_to_file "jack.txt" "Forward march!" "Captain_Jack-Captain_Jack"
add_a_new_line_to_file "jack.txt" "Badadadeedado, run along with Captain Jack" "Captain_Jack-Captain_Jack"
add_a_new_line_to_file "jack.txt" "Badadadeedado, left right, right left" "Captain_Jack-Captain_Jack"
add_a_new_line_to_file "jack.txt" "Run along with Captain Jack" "Captain_Jack-Captain_Jack"

add_a_new_line_to_file "du-hast.txt" "" "Rammstein-Du_hast"
add_a_new_line_to_file "du-hast.txt" "Du hast mich" "Rammstein-Du_hast"
add_a_new_line_to_file "du-hast.txt" "Du hast" "Rammstein-Du_hast"
add_a_new_line_to_file "du-hast.txt" "Du" "Rammstein-Du_hast"

add_a_new_line_to_file "auqa.txt" "" "Aqua-Baribie_Girl"
add_a_new_line_to_file "auqa.txt" "Jump in" "Aqua-Baribie_Girl"
add_a_new_line_to_file "auqa.txt" "Sure, Ken" "Aqua-Baribie_Girl"
add_a_new_line_to_file "auqa.txt" "You want to go for a ride?" "Aqua-Baribie_Girl"
add_a_new_line_to_file "auqa.txt" "Hi, Ken" "Aqua-Baribie_Girl"
add_a_new_line_to_file "auqa.txt" "Hiya, Barbie" "Aqua-Baribie_Girl"

git checkout Aqua-Baribie_Girl; git rebase master
git checkout master; git merge --no-edit --no-ff Aqua-Baribie_Girl

git checkout Rammstein-Du_hast; git rebase master

add_a_new_line_to_file "jack.txt" "" "Captain_Jack-Captain_Jack"
add_a_new_line_to_file "jack.txt" "Run to peace camp back" "Captain_Jack-Captain_Jack"
add_a_new_line_to_file "jack.txt" "Run along with Captain Jack" "Captain_Jack-Captain_Jack"
add_a_new_line_to_file "jack.txt" "Running to the railroad track" "Captain_Jack-Captain_Jack"
add_a_new_line_to_file "jack.txt" "(Bring me back to the railroad track)" "Captain_Jack-Captain_Jack"
add_a_new_line_to_file "jack.txt" "Bring me back to the railroad track" "Captain_Jack-Captain_Jack"
add_a_new_line_to_file "jack.txt" "(Hey yo Captain Jack)" "Captain_Jack-Captain_Jack"
add_a_new_line_to_file "jack.txt" "Hey yo Captain Jack" "Captain_Jack-Captain_Jack"

add_a_new_line_to_file "du-hast.txt" "" "Rammstein-Du_hast"
add_a_new_line_to_file "du-hast.txt" "Du hast mich" "Rammstein-Du_hast"
add_a_new_line_to_file "du-hast.txt" "Du hast" "Rammstein-Du_hast"
add_a_new_line_to_file "du-hast.txt" "Du" "Rammstein-Du_hast"

add_a_new_line_to_file "du-hast.txt" "" "Rammstein-Du_hast"
add_a_new_line_to_file "du-hast.txt" "Du hast mich" "Rammstein-Du_hast"
add_a_new_line_to_file "du-hast.txt" "Du hast" "Rammstein-Du_hast"
add_a_new_line_to_file "du-hast.txt" "Du" "Rammstein-Du_hast"

add_a_new_line_to_file "du-hast.txt" "" "Rammstein-Du_hast"
add_a_new_line_to_file "du-hast.txt" "Du hast mich" "Rammstein-Du_hast"
add_a_new_line_to_file "du-hast.txt" "Du hast" "Rammstein-Du_hast"
add_a_new_line_to_file "du-hast.txt" "Du" "Rammstein-Du_hast"

git checkout Rammstein-Du_hast; git rebase master
git checkout master; git merge --no-edit --no-ff Rammstein-Du_hast

git checkout Captain_Jack-Captain_Jack; git rebase master
git checkout master; git merge --no-edit --no-ff Captain_Jack-Captain_Jack

popd
