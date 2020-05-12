function output =Mcolor(input)
displayChart(input,'displayEdgeROIs',false,'displayGrayROIs',false, ...
           'displayRegistrationPoints',true,'displayColorROIs',true);
       
[colorTable,ccm] = measureColor(input);
figure
displayColorPatch(colorTable);
figure
plotChromaticity(colorTable);