#!/usr/bin/env bash

source ./content-generator.sh

mkdir -p git-cherrypick-example
pushd git-cherrypick-example

git init
git commit --allow-empty -m ">>>> This is a beginning of a beautiful friendship <<<<"
git branch final-destination
git commit --allow-empty -m ">>>> This is an end of a beautiful friendship <<<<"

git branch pick-all-cherry

add_a_new_line_to_file "vain.txt" "Call him Mr. Raider call him Mr. Wrong" "pick-all-cherry"
add_a_new_line_to_file "vain.txt" "Call him Mr. Vain" "pick-all-cherry"
add_a_new_line_to_file "vain.txt" "Call him Mr. Raider call him Mr. Wrong" "pick-all-cherry"
add_a_new_line_to_file "vain.txt" "Call him insane" "pick-all-cherry"
add_a_new_line_to_file "vain.txt" "He'd say: I know what I want" "pick-all-cherry"
add_a_new_line_to_file "vain.txt" "And I want it now" "pick-all-cherry"
add_a_new_line_to_file "vain.txt" "I want you cause I'm Mr. Vain" "pick-all-cherry"
add_a_new_line_to_file "vain.txt" "I know what I want and I want it now" "pick-all-cherry"
add_a_new_line_to_file "vain.txt" "I want you cause I'm Mr. Vain" "pick-all-cherry"

git branch pick-a-range

add_a_new_line_to_file "rebbokornike.txt" "This is the rhythm of the night" "pick-a-range"
add_a_new_line_to_file "rebbokornike.txt" "The night, oh yeah" "pick-a-range"
add_a_new_line_to_file "rebbokornike.txt" "The rhythm of the night" "pick-a-range"
add_a_new_line_to_file "rebbokornike.txt" "This is the rhythm of my life" "pick-a-range"

add_a_new_line_to_file "vain.txt" "Call me Raider call me Wrong" "pick-a-range"
add_a_new_line_to_file "vain.txt" "Call me insane call me Mr. Vain" "pick-a-range"
add_a_new_line_to_file "vain.txt" "Call me what you like" "pick-a-range"
add_a_new_line_to_file "vain.txt" "As long as you call me time and again" "pick-a-range"
add_a_new_line_to_file "vain.txt" "Feel the presence of the aura" "pick-a-range"
add_a_new_line_to_file "vain.txt" "Of the man none to compare" "pick-a-range"
add_a_new_line_to_file "vain.txt" "Loveless dying" "pick-a-range"

add_a_new_line_to_file "rebbokornike.txt" "My life, oh yeah" "pick-a-range"
add_a_new_line_to_file "rebbokornike.txt" "The rhythm of my life" "pick-a-range"


git checkout final-destination

# pick all cherry from the the `pick-all-cherry` branch
# it working with commit id too.

git cherry-pick master..pick-all-cherry

# get all commit for a specific file
git rev-list --reverse pick-all-cherry..pick-a-range -- vain.txt | git cherry-pick --stdin

popd