branch_check(){
    branch=$(git branch | sed -n -e 's/^\* \(.*\)/\1/p')
    len=$#
    if [[ $len > 1 ]]; then
        for i in "${@:2}"; do
            git add $i
        done
    else
        git add .
    fi
    git commit -m "$1"
    git push origin "$branch"
    # Comment for test
}