#!/bin/bash
echo
# echo "The way to use this script is to specify a file or directory within 'theirs' that you want to pull into 'ours'."
# echo "... for example:"
# echo " steal.bash theirs/examples/webgl_loader_collada.html"
# echo "the script will use 'makedir -p' to make sure our corresponding parent directory is there, and rsync to sync the item into that corresponding path."
# echo "press ctrl+c to cancel if you're concerned."
# echo

# read

echo
echo
echo "REMEMBER TO:"
echo "- Use trailing slashes if copying just a dir. (just like you need to when using rsync)"
echo
echo

echo
echo "PROCESSING:"
echo
their_path="$1"

echo their path is:.. "$their_path"

our_path="${their_path/theirs/ours}"
echo our path is:.... "$our_path"

our_dir=$(dirname "$our_path")
echo our dir is:..... "$our_dir"


mkdir -pv "$our_dir"
echo
echo "assured our corresponding parent folder '$our_dir' is there"
echo

echo
echo rsync -rv "$their_path" "$our_path"
echo rsync -rv "$their_path" "$our_path"
echo rsync -rv "$their_path" "$our_path"
echo rsync -rv "$their_path" "$our_path"
echo

     rsync -rv "$their_path" "$our_path"
echo
echo "rsync'd their thing into our corresponding parent folder"
echo