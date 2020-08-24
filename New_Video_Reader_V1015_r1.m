%  NEW_VIDEO_READER
%
%  Reading fromes from a video clip

clear all;
close all;
vidObj = VideoReader('1015_.avi');
vidHeight = vidObj.Height;
vidWidth = vidObj.Width;
s = struct('cdata',zeros(vidHeight,vidWidth,3,'uint8'));
k = 1;
while hasFrame(vidObj)
    data(k).cdata = readFrame(vidObj);
    k = k+1;
end

iref =  93;  %  Reference frame number
data1 = data(iref).cdata; 
imshow(data1);
temp1 = double( data1 );

imwrite(data1,'1015_frame93.tif');