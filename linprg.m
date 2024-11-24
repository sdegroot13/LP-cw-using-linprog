echo "# LP-cw-using-linprog" >> README.md
git init
git add README.md
git commit -m "first commit"
git branch -M main
git remote add origin https://github.com/sdegroot13/LP-cw-using-linprog.git
git push -u origin main

%simplex using linprog

z = [2 3 4 1 8 1];

minz = z*(-1)
Aeq = [1 -1 2 0 1 1];
beq = [18];
A = [0 1 -1 1 0 3; 1 1 -3 1 1 0; 1 -1 0 0 1 1; (-1)*eye(6)];
b = [8; 36; 23; zeros([6 1])];

x = linprog(minz,A,b,Aeq,beq);
sol = z*x;