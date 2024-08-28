#echo "Starting postremove of EXTRlitppython"
SITE=`python -c "from distutils.sysconfig import get_python_lib; print(get_python_lib())"`  
# Only remove the 3PPs.pth when the last version of
# EXTRlitppython is removed from the system.
# Check $1 veriable which is a count of the number of
# versions of the package that are installed)
if [ -e $SITE/3PPs.pth -a $1 = 0 ] ; then
    rm -rf $SITE/3PPs.pth
fi
#echo "Finished postremove"
