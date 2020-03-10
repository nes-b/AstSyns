# This is an ImageJ script allowing preprocessing of 2D imaging data
#
# It has been used to prepare 2D confocal images to quantify inhibitory 
# synaptses labeled by vGAT1 and GEPHYRIN in primary human brain tissue.

Stack.setChannel(1);
run("Grays");
run("Subtract Background...", "rolling=10 slice");
run("Bandpass Filter...", "filter_large=200 filter_small=4 suppress=None tolerance=1 autoscale saturate display");
close();
run("Despeckle", "slice");
run("Sharpen", "slice");
run("Subtract Background...", "rolling=10 slice");

Stack.setChannel(2);
run("Subtract Background...", "rolling=10 slice");
run("Bandpass Filter...", "filter_large=200 filter_small=4 suppress=None tolerance=1 autoscale saturate display");
close();
run("Despeckle", "slice");
run("Sharpen", "slice");
run("Subtract Background...", "rolling=10 slice");

run("8-bit");
Stack.setChannel(1);
setAutoThreshold("Yen dark");
//run("Threshold...");
run("Convert to Mask", "method=Yen background=Dark only black");

Stack.setChannel(2);
setAutoThreshold("Yen dark");
//setThreshold("Intermodes dark");
run("Convert to Mask", "method=Yen background=Dark only black");


# Subsequently, the SynapseCounter tool (https://github.com/SynPuCo/SynapseCounter. Accessed 6 Mar 2020)
# was run with the following params:
#
# Resize image width = 0
# Rolling ball radius = 0.0
# Maximum filter radius = 2.0
# Method for threshold adjustment = 'Default'
# Presynaptic particle size = 30
# Max presynaptic particle size = 500
# Presynaptic particle size = 30
# Presynaptic particle size = 500
#
# after a posteriori determination of real puncta in 3 images.
#
