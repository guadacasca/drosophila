data = load('modulacion_monitor1.dat');
relNums=data(:,3);

[pxx,f] = periodogram(relNums,[],[],1);
plot(log10(f),log10(pxx))
xlabel('log10(f)')
ylabel('log10(S(f))')

