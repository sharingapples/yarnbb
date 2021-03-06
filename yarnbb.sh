#!/bin/sh

function invalid
{
  echo "Invalid Arguments"
  echo "Usage:"
  echo "  yarnbb [--dev] <user/origanization> <package> [<tag>]"
  echo ""
  echo "Example:"
  echo "  yarnbb bhoos marriage v1.0.0"
  echo ""
  echo "Runs as:"
  echo "  yarn add git+ssh://bitbucket.org/bhoos/marriage.git#v1.0.0"
  echo ""
  exit
}

declare -a args
devMode=0
for var in "$@"
do
  if [ $var != '--dev' ]; then
    args=("${args[@]}" "$var")
  else
    devMode=1
  fi
done

if [ ${#args[@]} -lt 2 ]; then
  invalid
fi

if [ ${#args[@]} -gt 3 ]; then
  invalid
fi

cmd="yarn add git+ssh://git@bitbucket.org/${args[0]}/${args[1]}.git#${args[2]}"

if [ $devMode -eq 1 ]; then
  cmd="$cmd --dev"
fi

echo $cmd
$cmd
