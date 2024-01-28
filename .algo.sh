echo "ejecutando script de cambios al repo"

commit="$1"
branch="$2"

if [ -n "$commit" ]; then
	git add .
	git commit -m $commit

#	git push origin $branch
else
	echo "la variable viene vacia"
fi
