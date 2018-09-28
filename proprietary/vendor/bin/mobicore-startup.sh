#!/system/bin/sh

# Startup script for MobiCore processes #
mobicore=`getprop sys.mobicore.enable`

if [ "$mobicore" -eq "true" ]; then
	echo "running mobicore daemon in background"
	# run daemon in background
	/system/vendor/bin/mcDriverDaemon -b
else
	echo "mobicore is not ready"
	exit 1
fi
