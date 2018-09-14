function grafperfil(mat1,mat2,mat3,mat4)
    %Tabula os valores de cl,cd,cm e alfa de cada perfil
    cd1 = mat1(:,3);
    cl1 = mat1(:,2);
    alfa1 = mat1(:,1);
    cm1 = mat1(:,5);
    cd2 = mat2(:,3);
    cl2 = mat2(:,2);
    alfa2 = mat2(:,1);
    cm2 = mat2(:,5);
    cd3 = mat3(:,3);
    cl3 = mat3(:,2);
    alfa3 = mat3(:,1);
    cm3 = mat3(:,5);
    cd4 = mat4(:,3);
    cl4 = mat4(:,2);
    alfa4 = mat4(:,1);
    cm4 = mat4(:,5);
    
    %Plota o primeiro grafico (Cl x Cd)
    figure 
    plot(cd1,cl1,'b')
    grid on 
    xlabel('Cd')
    ylabel('Cl')
    hold on
    plot(cd2,cl2,'r')
    hold on
    plot(cd3,cl3,'y')
    hold on
    plot(cd4,cl4,'g')
    legend('E423','E591','S1223','ES1014')
    
     %Plota o segundo grafico (Cl x alfa)
    figure 
    plot(alfa1,cl1,'b')
    grid on 
    xlabel('alfa')
    ylabel('Cl')
    hold on 
    plot(alfa2,cl2,'r')
    hold on 
    plot(alfa3,cl3,'y')
    hold on 
    plot(alfa4,cl4,'g')
    legend('E423','E591','S1223','ES1014')
    
     %Plota o terceiro grafico (Cd x alfa)
    figure     
    plot(alfa1,cd1,'b')
    grid on 
    xlabel('alfa')
    ylabel('Cd')
    hold on
    plot(alfa2,cd2,'r')
    hold on
    plot(alfa3,cd3,'y')
    hold on
    plot(alfa4,cd4,'g')
    legend('E423','E591','S1223','ES1014')
    
    %Plota o quarto grafico (Cm x alfa)
    figure   
    plot(alfa1,cm1,'b')
    grid on 
    xlabel('alfa')
    ylabel('Cm')
    hold on 
    plot(alfa2,cm2,'r')
    hold on 
    plot(alfa3,cm3,'y')
    hold on 
    plot(alfa4,cm4,'g')
    legend('E423','E591','S1223','ES1014')
    
    %Plota o quinto grafico (Cl/Cd x alfa)
    figure 
    plot(alfa1,(cl1./cd1),'b')
    grid on 
    xlabel('alfa')
    ylabel('Cl/Cd')
    hold on 
    plot(alfa2,(cl2./cd2),'r')
    hold on 
    plot(alfa3,(cl3./cd3),'y')
    hold on 
    plot(alfa4,(cl4./cd4),'g')
    legend('E423','E591','S1223','ES1014')
    
     %Plota o sexto grafico (Cl^(3/2)/Cd x alfa)
    figure 
    plot(alfa1,((cl1.^1.5)./cd1),'b')
    grid on
    xlabel('alfa')
    ylabel('Cl elevado a (3/2)/Cd')
    hold on
    plot(alfa2,((cl2.^1.5)./cd2),'r')
    hold on
    plot(alfa3,((cl3.^1.5)./cd3),'y')
    hold on
    plot(alfa4,((cl4.^1.5)./cd4),'g')
    legend('E423','E591','S1223','ES1014')
end    