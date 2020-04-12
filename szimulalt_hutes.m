function act=szimulalt_hutes(W,P,n)
MAX_ITER=1000;
eps=0.001;         %ha a homerseklet kisebb lesz mint eps megallunk
a=0.995;             %homerseklet csokkenest befolyasolo allando
T0=5;              %kezdeti homerseklet
act=P;               %kezdeti allapot
probability=0;        
for i=1:MAX_ITER
    
    T = T0*a^i;%kiszamoljuk az aktualis homersekletet
    
    if (T <= eps)           %megallasi feltetelt ellenorzunk
        break       
    end;
    
    act_hossz=uthossz(act,W); %aktualis ut hossza
    figure(2)
    %plot(W(1,:),W(2,:),'Linewidth',2)
    plot(W(act,1),W(act,2),'Linewidth',2)
    hold on
    plot([W(act(1),1) W(act(n),1)],[W(act(1),2) W(act(n),2)],'Linewidth',2)
    hold on
    %plot(W(1,:),W(2,:),'ro','Linewidth',2)
    plot(W(:,1),W(:,2),'x','Linewidth',2)
    legend_text{1}=strcat('','length=',num2str(act_hossz));
    legend_text{2}=strcat('','temperaure=',num2str(T));
    legend_text{3}=strcat('','probability=',num2str(probability));
    legend(legend_text,'location','northeast');
    pause(0.00000001)
    hold off
    
    %ket varos sorrendjenek felcserelesevel generalom a kovetkezo allapotot 
    %(szomszedos allapot meghatarozasa)
    next = act;
    k=randi([1,n]);
    l=randi([1,n]);
    seged=next(k);
    next(k)=next(l);
    next(l)=seged;
   
    DeltaE = uthossz(next,W) - act_hossz;
    if DeltaE < 0           %ha a next ut rovidebb mint az act ut, a next utat elfogadjuk az act utnak
        act = next;
    else                     %maskepp csak a valoszinusegi tenyezo fuggvenyeben fogadjuk el
        probability=exp(-DeltaE/T);
        if (rand()<probability)
            act = next;
        end;
    end;
end;