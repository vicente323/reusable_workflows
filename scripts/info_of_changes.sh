
git log --format="%H" -n 2

commit_ids=$(git log --format="%H" -n 2)
i=0
for commit_id in $commit_ids; 
    do
        eval "commit_$i=$commit_id"
        i=$((i + 1))
    done
      
echo "the commits that are going to be evaluated are (HEAD) <$commit_0> and <$commit_1>" 