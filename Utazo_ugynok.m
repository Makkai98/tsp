clc;
clear all;
close all;
n=13; %városok száma


W=2*(rand(n,2)-0.5); % városkoordináták inicializálása
P=1:n; %utvonal
figure(1)
plot(W(:,1),W(:,2),'x')
    
eredmeny=szimulalt_hutes(W,P,n);
 figure(2)
    %plot(W(1,:),W(2,:),'Linewidth',2)
    plot(W(eredmeny,1),W(eredmeny,2),'Linewidth',2)
    hold on
    plot([W(eredmeny(1),1) W(eredmeny(n),1)],[W(eredmeny(1),2) W(eredmeny(n),2)],'Linewidth',2)
    hold on
    %plot(W(1,:),W(2,:),'ro','Linewidth',2)
    plot(W(:,1),W(:,2),'x','Linewidth',2)
    hold on
    
   