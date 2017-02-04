mug1 = readImg('mugshot1.jpg');
img_3Mx3N = scale_MN(mug1, .3, .3);
img_9Mx4N = scale_MN(mug1, .9, .4);
img_1Mx10N = scale_MN(mug1, .1, 10);
img_2Mx2N = scale_MN(mug1, 2, 2);
img_10Mx1N = scale_MN(mug1, 10, 1);
img_15Mx35N = scale_MN(mug1, 1.5, 3.5 );

writeImg(img_3Mx3N, 'img_3Mx3N.jpg');
writeImg(img_9Mx4N, 'img_9Mx4N.jpg');
writeImg(img_1Mx10N, 'img_1Mx10N.jpg');
writeImg(img_2Mx2N, 'img_2Mx2N.jpg');
writeImg(img_10Mx1N, 'img_10Mx1N.jpg');
writeImg(img_15Mx35N, 'img_15Mx35N.jpg');