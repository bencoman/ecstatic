
# Download Pharo infrastructure to the same directory where this script is lcoated.
mkdir -p `dirname $0`/__cache
cd `dirname $0`/__cache
wget -O - get.pharo.org/40+vm | bash
REPO=http://smalltalkhub.com/mc/StephaneDucasse/Ecstatic/main
./pharo Pharo.image config $REPO ConfigurationOfEcstatic --install=0.5 --group='ALL'
