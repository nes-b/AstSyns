# This is an ImageJ script allowing to preprocess 2D imaging data
#
# It has been used to prepare 2D confocal images to quantify excitatory 
# synaptic puncta labeled by vGLUT1 and HOMER1 in primary human brain tissue.

Stack.setChannel(1);
run("Grays");
run("Subtract Background...", "rolling=8 slice");
run("Bandpass Filter...", "filter_large=200 filter_small=3 suppress=None tolerance=1 autoscale saturate display");
close();
run("Despeckle", "slice");
run("Sharpen", "slice");
run("Subtract Background...", "rolling=10 slice");

Stack.setChannel(2);
run("Subtract Background...", "rolling=8 slice");
run("Bandpass Filter...", "filter_large=200 filter_small=2 suppress=None tolerance=1 autoscale saturate display");
close();
run("Despeckle", "slice");
run("Sharpen", "slice");
run("Subtract Background...", "rolling=10 slice");

run("8-bit");
Stack.setChannel(1);
setAutoThreshold("RenyiEntropy dark");
//run("Threshold...");
run("Convert to Mask", "method=RenyiEntropy background=Dark only black");

Stack.setChannel(2);
setAutoThreshold("IsoData dark");
//setThreshold("IsoData dark");
run("Convert to Mask", "method=IsoData background=Dark only black");


# Subsequently, the SynapseCounter tool (https://github.com/SynPuCo/SynapseCounter. Accessed 6 Mar 2020)
# was run with the following params:
#
# Resize image width = 0
# Rolling ball radius = 0.0
# Maximum filter radius = 2.0
# Method for threshold adjustment = 'Default'
# Presynaptic particle size = 30
# Max presynaptic particle size = 700
# Presynaptic particle size = 10
# Presynaptic particle size = 500
#
# after a posteriori determination of real puncta in 3 images.
#
