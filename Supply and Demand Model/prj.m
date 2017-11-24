function prj
b0=1.2;
b1=2;
b2=1.6;
c0=4;
c1=1.6;
c2=0.04;
d0=0;
d1=3;
d2=0.02;
d3=0.4;
e0=0.5;
e1=0.3;
e2=0.2;
alphavalue1=2:0.005:2.5;
%alphavalue2=1:0.005:1.25;
for alpha=alphavalue1
    p1=rand(1);
    p2=rand(1);
    for n=1:100
        p=p1;
        pp=p2;
        p1=p+alpha*(b0-e0-(e1+b1)*p+(b2-e2)*p.^2);
        p2=pp+alpha*(c0-d0-(d1+c1)*pp+(c2-d2)*pp^2+d3*p);
        %display(p1);
        display(p2);
        %plot(alpha,p)
        plot(alpha,pp)
        ylim([0 1.5])
        hold on
    end
end
  
        %xlabel('a');
        %ylabel('x');
        %title('Bifurcation Diagram');
end