function output=Msharpness(input,index)


%Highlight and label the detected ROIs
%displayChart(input);
displayChart(input,'displayEdgeROIs',true,'displayGrayROIs',true, ...
           'displayRegistrationPoints',true,'displayColorROIs',true);
       
%Measure the sharpness of all 60 slanted edge ROIs
[sharpnessTable,aggregateSharpnessTable] = measureSharpness(input);

%Display the SFR plot for the center label index ROI
%plotSFR(sharpnessTable,'ROIIndex',index,'displayLegend',false,'displayTitle',true);

%Display the average SFR of the averaged vertical and horizontal edges
plotSFR(aggregateSharpnessTable);
