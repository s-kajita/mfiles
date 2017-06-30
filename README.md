Matlab/Octave utility for log data analysis
=======

How to use
-----

```
>> clear
>> type testdata.log
% time dataX[1] dataX[2]
0 0 1
0.01 0.00999983 0.99995
0.02 0.0199987 0.9998
0.03 0.0299955 0.99955
0.04 0.0399893 0.9992
0.05 0.0499792 0.99875
0.06 0.059964 0.998201
0.07 0.0699428 0.997551
-- less -- (f)orward, (b)ack, (q)uit

>> GetLogVariables
log file name: testdata.log
VARIABLES: time dataX[2] 

>> plot(time,dataX)
```