%for example : 
%x=[2 3 5];
%y=[0.5 2 2.5];
%lagrangefunction(3,x,y)
%ans=2

function z=lagrangefunction(point,x,y)

n=length(x);
if n==length(y)
    L=ones(1,n);
    z=0;
    for k=1:n
        for i=1:n
            if k!=i
                L(k)=L(k).*((point-x(i))/(x(k)-x(i)));
            end
        end
        z=z+y(k).*L(k);
    end
else
    disp("x and y not has the same size");
end