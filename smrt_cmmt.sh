branch_check(){
    branch=$(git branch | sed -n -e 's/^\* \(.*\)/\1/p')
    delete=("$@")
    message=${delete[0]}
    files=${@/$message}
    if [[ $files != "" ]]; then
        for i in $files; do
            git add $i
        done
    else
         git add .
    fi
    git commit -m $message
    git push origin $branch
}