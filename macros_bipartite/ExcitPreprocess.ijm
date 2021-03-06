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
