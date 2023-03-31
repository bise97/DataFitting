%Caricamento immagine ridimensionata
img = imresize(imread('cane.jpg'), [64 NaN]);
[r,c,v] = size(img);

%Preallocazione delle nuove immagini
NEW_I = zeros(5*r,5*c,v,'uint8');
NEW_I_L = zeros(5*r,5*c,v,'uint8');

%Determinazioen della griglia	dell’immagine	di	partenza	
x = 1:c;
y = 1:r;

%Determinazione della	griglia	dell’immagine	che	voglio	ottenere
new_x = linspace(1,c,5*c)';
new_y = linspace(1,r,5*r);

%Generazione	tramite	interpolazione	delle due	nuove	immagini	
for i=1:3
    NEW_I(:,:,i)=uint8(interp2(x,y,double(img(:,:,i)),new_x,new_y,'spline'));
    NEW_I_L(:,:,i)=uint8(interp2(x,y,double(img(:,:,i)),new_x,new_y,'linear'));
end

%Rappresentazione delle immagini
figure(1), subimage(img),title('Originale')
figure(2), subimage(NEW_I_L),title('Linear')
figure(3), subimage(NEW_I),title('Spline')

