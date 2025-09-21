import("stdfaust.lib");

freq = hslider("ModFreq", 100, 20, 2000, 1);
gain = hslider("Gain", 0.5, 0, 1, 0.01);
 

process = _* (gain * os.osc(freq)) <: _,_;
