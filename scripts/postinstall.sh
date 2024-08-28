# Setup python path
SITE=`python -c "from distutils.sysconfig import get_python_lib; print(get_python_lib())"`
echo "/opt/ericsson/nms/litp/3pps/lib/python" > $SITE/3PPs.pth
echo "/opt/rh/python27/root/usr/lib64/python2.7/site-packages" >> $SITE/3PPs.pth
# Workaround for upgrade scenario - remove old python path
# in order to let proper EXTRlitppython upgrade.
if [ -e $SITE/3pps.pth ] ; then
    rm -rf $SITE/3pps.pth
fi
