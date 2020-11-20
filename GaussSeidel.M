f=[1,-6,9,-4]; %vector elements are the Coefficients of the polynomials. in the desenting order of powers
X=5; %initial value to be assumed
fprintf("X[0]=%i\n",X);
n=10; % Number of Iterations
s=(size(f)(2))-1;
s=f(s);
g=-f./s;
s=(size(f)(2));
x_temp=0;
for i=1:n
  x_temp=0;
  for j=1:s
    if j==(s-1)
      continue
    end
    x_temp=x_temp+g(j)*X^(s-j);
    fprintf("\t\tX^[%i]=%i\n",(s-j),(g(j)*X^(s-j)));
  end
  X=x_temp;
  fprintf("X[%i]=%i\n",i,X);
end
fprintf("\n\nX[converged]=%i\n",X);
