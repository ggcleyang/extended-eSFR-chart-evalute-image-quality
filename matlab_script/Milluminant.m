
function output =Milluminant(input)

%displayChart(input,'displayEdgeROIs',false,'displayGrayROIs',false, ...
 %          'displayRegistrationPoints',true,'displayColorROIs',false);

illum = measureIlluminant(input);
disp(illum);