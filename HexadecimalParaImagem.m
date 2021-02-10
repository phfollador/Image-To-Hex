%%CONVERTE UM ARQUIVO DE TEXTO EM HEXADECIMAL PARA UMA IMAGEM
%Abrindo o arquivo de texto
dadosImg = fopen('imagemHex.txt', 'r');
img = fscanf(dadosImg, '%x', [1 inf]); 
fclose(dadosImg) 

%Restaurando a imagem original
original = reshape(img,[256 256]);
original = original';
figure, imshow(original,[])