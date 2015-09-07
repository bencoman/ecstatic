#
# Dispatched from createsite, theme, generate, serve scripts.
# Runs command-line Pharo by default, and UI Pharo for debugging. 
#

EXE_CACHE=$(dirname $0)/__cache
options=()

PHARO_CMD=pharo
while [[ $1 ]]
do
    case "$1" in
	-d | --debug )
            PHARO_CMD=pharo-ui
	    ;;
	*)
	    options+=("$1")
     esac
     shift
done

if [ -a $EXE_CACHE/$PHARO_CMD ] ; then
    $EXE_CACHE/$PHARO_CMD $EXE_CACHE/Pharo.image ecstatic "${options[@]}" --quit `pwd`
else
    echo $EXE_CACHE/$PHARO_CMD not found. Possibly need to run _ecstatic/install. 
fi
