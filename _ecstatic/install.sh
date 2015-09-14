# Download Pharo infrastructure VM+Image under __cache folder
# located at the same place as this script.

ECSTATIC_DIR=`dirname $0`
mkdir -p $ECSTATIC_DIR/__cache
cd $ECSTATIC_DIR/__cache

wget -O - get.pharo.org/40+vm | bash
REPO=http://smalltalkhub.com/mc/StephaneDucasse/Ecstatic/main
./pharo Pharo.image config $REPO ConfigurationOfEcstatic --install=0.5 --group='ALL'
