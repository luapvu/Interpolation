%this function scales a given MxN image to a aMxbN image and outputs it
function [ outputImage ] = scale_MN( img, a, b)


imgSz = size(img); % read in image size
rowLength = imgSz(1,1); % M length
newM = round(a*rowLength); % calculating aM

columnLength = imgSz(1,2); % N length
newN = round(b*columnLength); % calculating bN

scaledMN = newM*newN;% calculating aMxbN
outputImage = zeros(newM, newN); % initialize output array

sampleRateM = 1/a; % determine the M sampling rate
sampleRateN = 1/b; % determine the N sampling rate

x = sampleRateM; % initialize x & y for use in for loop
y = sampleRateN;
m_count = 1; %keeps track of sampling in the m direction

% this loop iterates only the needed samples of the image and interpolates
% points that fall out of range
for I = 1:scaledMN
outputImage(I) = bilinearInterpolation(y, x, img); % grabs image value at point x y
    x = x + sampleRateM; % manually increment x in the M direction for use in the next bilinearInterpolation call
    m_count = m_count +1; % increment m sample counter
    if( m_count > newM) % if we see that x exceeds the rowLength, we know it's time to move to the next column
        x = sampleRateM; % reset x 
        y = y+ sampleRateN; % increment y in the N direction by the value of the sampleRate in the N direction
        m_count = 1;
    end


end



end

