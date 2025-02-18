if [ -z $1 ] ; then
echo "missing arg"
exit 1
fi

grep -l $1 files/* | xargs -n 1 basename
