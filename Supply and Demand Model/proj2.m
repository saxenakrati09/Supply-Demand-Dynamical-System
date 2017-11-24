function proj2
lambda=0.3;
b=0.25;
mu=15;
avalues=-1.25:0.005:1.25; 
for a=avalues
    x0=-1.5;
    for n=1:100
        x=x0;
        x0=((1-lambda)*x)+(a*lambda/b)-(lambda*atan(mu*x)/b);
        display(x0);
        plot(a,x)
        hold on
    end
        xlabel('a');
        ylabel('x');
        title('Bifurcation Diagram');
end
end