
# Cache Pharo infrastructure under the directory where this script is located.
SCRIPT_FOLDER=`dirname $0`
mkdir -p $SCRIPT_FOLDER/__cache
cd $SCRIPT_FOLDER/__cache
wget -O - get.pharo.org/40+vm | bash
REPO=http://smalltalkhub.com/mc/StephaneDucasse/Ecstatic/main
./pharo Pharo.image config $REPO ConfigurationOfEcstatic --install=0.5 --group='ALL'
