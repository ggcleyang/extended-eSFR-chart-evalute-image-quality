function output =Mca(input,index)

displayChart(input,'displayEdgeROIs',true,'displayGrayROIs',false, ...
           'displayRegistrationPoints',true,'displayColorROIs',false);

chTable = measureChromaticAberration(input);

roi_index = index;
edgeProfile = chTable.normalizedEdgeProfile{roi_index};

figure
p = length(edgeProfile.normalizedEdgeProfile_R);
plot(1:p,edgeProfile.normalizedEdgeProfile_R,'r', ...
     1:p,edgeProfile.normalizedEdgeProfile_G,'g', ...
     1:p,edgeProfile.normalizedEdgeProfile_B,'b')
xlabel('Pixel')
ylabel('Normalized Intensity')
title(['ROI ' num2str(roi_index) ' with Aberration ' num2str(chTable.aberration(roi_index))])
