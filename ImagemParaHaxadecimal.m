%%CONVERTE UMA IMAGEM PARA UM ARQUIVO DE TEXTO
%Escolhendo uma imagem
[filename, pathname] = uigetfile('*.bmp;*.tif;*.jpg;*.pgm','Pick an M-file');
img = imread(filename);
img = imresize((img),[256 256]);
[ row col p ] =size(img);

if p == 3
    img = rgb2gray(img);
end

rectImg = img(16:80,16:80);

img(16:80,16:80) = rectImg;

%Convertendo a imagem para hexadecimal
imgTrans = img';
img1D = imgTrans(:);
imgHex = dec2hex(img1D);

%Criando o arquivo e guardando os valores hexadecimais dentro
dadosImg = fopen('imagemHex.txt', 'wt');
fprintf(dadosImg, '%x ', img1D);
fclose(dadosImg)