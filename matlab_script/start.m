clear;
%Read an image of an eSFR chart
I = imread('..\test_images\extended_eSFR_chart.png');

%show eSFR chart
%figure
%imshow(I)
%title('Captured Image of eSFR Chart')
%text(size(I,2),size(I,1)+15, ...
%    ['Chart courtesy of Imatest',char(174)],'FontSize',10,'HorizontalAlignment','right');

%Create an eSFR test chart object that automatically defines ROIs based on detected registration markers
chart = esfrChart(I);
%chart = esfrChart(I,'Sensitivity',0.8);

%measure sharpness
Msharpness(chart,29);

%measure Chromatic Aberration
%Mca(chart,31);

%measure noise
%Mnoise(chart);

%measure color accuracy
%Mcolor(chart);

%measure illuminance
%Milluminant(chart);