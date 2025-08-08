#!/bin/sh

branches_to_remove=$(git branch --format='%(refname:short)' | grep -v "$(git branch --show-current)" | while read branch; do
  if ! git show-ref --verify --quiet "refs/remotes/origin/$branch"; then
    echo "$branch"
  fi
done)

if [ -z "$branches_to_remove" ]; then
  echo "No branches to remove."
  exit 0
fi

echo "Branches to remove:"
echo "$branches_to_remove"
echo "Type y/n:"
read answer

if [ "$answer" = "y" ]; then
  for branch in $branches_to_remove; do
    git branch -D "$branch"
    echo "Removed branch: $branch"
  done
else
  echo "No branches removed."
fi
