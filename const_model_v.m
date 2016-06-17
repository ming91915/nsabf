function f_next_v=const_model_v(d_ini,f_ini,delta_d,k1,k2,Fy)
% k1: 1.doðrunun,k2: 2. ve 3. doðrularýn eðimi,Fy:akma dayanýmý
f1=k1*(d_ini+delta_d);
x_2=Fy-Fy/k1*k2;
f2=x_2+k2*(d_ini+delta_d);
f3=-x_2+k2*(d_ini+delta_d);
f_next_v=f_ini+k1*delta_d;
if f_next_v>f2;
    f_next_v=f2;
end
if f_next_v<f3;
    f_next_v=f3;
end
end
