function f_next_m=const_model_m(d_ini,f_ini,delta_d,k1,k2,Fy)
% k1: 1.do�runun,k2: 2. ve 3. do�rular�n e�imi,Fy:akma dayan�m�
f1=k1*(d_ini+delta_d);
x_2=Fy-Fy/k1*k2;
f2=x_2+k2*(d_ini+delta_d);
f3=-x_2+k2*(d_ini+delta_d);
f_next_m=f_ini+k1*delta_d;
if f_next_m>f2;
    f_next_m=f2;
end
if f_next_m<f3;
    f_next_m=f3;
end
end
