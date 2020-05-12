function output =Mnoise(input)

displayChart(input,'displayEdgeROIs',false,'displayGrayROIs',true, ...
           'displayRegistrationPoints',true,'displayColorROIs',false);

noiseTable = measureNoise(input);

figure
subplot(1,2,1)
plot(noiseTable.ROI,noiseTable.MeanIntensity_R,'r', ...
    noiseTable.ROI,noiseTable.MeanIntensity_G,'g', ...
    noiseTable.ROI,noiseTable.MeanIntensity_B,'b')
title('Signal')
ylabel('Intensity')
xlabel('Gray ROI Number')
grid on

subplot(1,2,2)
plot(noiseTable.ROI,noiseTable.SNR_R,'r', ...
    noiseTable.ROI,noiseTable.SNR_G,'g', ...
    noiseTable.ROI,noiseTable.SNR_B,'b')
title('SNR')
ylabel('dB')
xlabel('Gray ROI Number')
grid on