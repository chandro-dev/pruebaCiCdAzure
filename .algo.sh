echo "ejecutando script de cambios al repo"

commit="$1"
branch="$2"

if [ -n "$commit" ]; then
	clear
	git add .
	git commit -m $commit
	if [ -n "$branch"]; then
		git push origin $branch
	else
		git push origin master
	fi
else
	echo "la variable viene vacia"
fi
