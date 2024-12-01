%linprog function

z = [2 3 4 1 8 1]; %objective function
min = false; %maximisation problem

%setting up the constraints
%equality constraint
Aeq = [1 -1 2 0 1 1];
beq = 18;
%less than/equal constraints
A = [0 1 -1 1 0 3; 1 1 -3 1 1 0; 1 -1 0 0 1 1; (-1)*eye(size(z,2))];
b = [8; 36; 23; zeros([size(z,2) 1])];

%converts maximisation into minimisation problem
if min == false
    minz = z*(-1);
else
    minz = z;
end

%linprog function
x = linprog(minz,A,b,Aeq,beq);

%maximum z value
sol = z*x;

%displaying the solution
x = x.';
array2table(x)

if min == false
    mx = 'Maximum z = %f\n';
    fprintf(mx,sol)
else
    mn = 'Minimum z = %f\n';
    fprintf(mn,sol)
end
