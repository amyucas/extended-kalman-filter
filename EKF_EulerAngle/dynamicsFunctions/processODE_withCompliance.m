function f_withCompliance = processODE_withCompliance(v_Bx,v_By,v_Bz,omega_Bx,omega_By,omega_Bz,f_B_ox,f_B_oy,f_B_oz,mu_B_ox,mu_B_oy,mu_B_oz,f_B_cx,f_B_cy,f_B_cz,mu_B_cx,mu_B_cy,mu_B_cz,phi1,phi2,phi3,k_xx,k_yy,k_zz,c_xx,c_yy,c_zz,phi01,phi02,phi03,I_Bxx,I_Bxy,I_Bxz,I_Byy,I_Byz,I_Bzz,m,G_g1,G_g2,G_g3)
%PROCESSODE_WITHCOMPLIANCE
%    F_WITHCOMPLIANCE = PROCESSODE_WITHCOMPLIANCE(V_BX,V_BY,V_BZ,OMEGA_BX,OMEGA_BY,OMEGA_BZ,F_B_OX,F_B_OY,F_B_OZ,MU_B_OX,MU_B_OY,MU_B_OZ,F_B_CX,F_B_CY,F_B_CZ,MU_B_CX,MU_B_CY,MU_B_CZ,PHI1,PHI2,PHI3,K_XX,K_YY,K_ZZ,C_XX,C_YY,C_ZZ,PHI01,PHI02,PHI03,I_BXX,I_BXY,I_BXZ,I_BYY,I_BYZ,I_BZZ,M,G_G1,G_G2,G_G3)

%    This function was generated by the Symbolic Math Toolbox version 6.2.
%    25-Aug-2015 18:58:58

t2 = cos(phi3);
t3 = sin(phi1);
t4 = cos(phi1);
t5 = cos(phi2);
t6 = sin(phi3);
t7 = 1.0./m;
t8 = sin(phi2);
t9 = I_Byz.^2;
t10 = I_Bxy.^2;
t11 = omega_By.^2;
t12 = I_Bxz.^2;
t13 = omega_Bx.^2;
t14 = omega_Bz.^2;
t15 = k_xx.^2;
t16 = k_yy.^2;
t17 = k_zz.^2;
t18 = I_Bzz.^2;
t19 = I_Byy.^2;
t20 = I_Bxx.*t9;
t21 = I_Byy.*t12;
t22 = I_Bzz.*t10;
t26 = I_Bxx.*I_Byy.*I_Bzz;
t27 = I_Bxy.*I_Bxz.*I_Byz.*2.0;
t23 = t20+t21+t22-t26-t27;
t24 = 1.0./t23;
t25 = I_Bxx.^2;
t28 = t4.^2;
t29 = t3.^2;
t30 = t28+t29;
t31 = 1.0./t30;
t32 = 1.0./t8;
f_withCompliance = [-G_g1.*(t3.*t6-t2.*t4.*t5)-G_g2.*(t2.*t3+t4.*t5.*t6)-f_B_cx.*t7+f_B_ox.*t7-omega_By.*v_Bz+omega_Bz.*v_By+G_g3.*t2.*t8;G_g1.*(t4.*t6+t2.*t3.*t5)+G_g2.*(t2.*t4-t3.*t5.*t6)-f_B_cy.*t7+f_B_oy.*t7+omega_Bx.*v_Bz-omega_Bz.*v_Bx+G_g3.*t3.*t8;G_g3.*t5-f_B_cz.*t7+f_B_oz.*t7-omega_Bx.*v_By+omega_By.*v_Bx-G_g1.*t2.*t8+G_g2.*t6.*t8;-t24.*(mu_B_cx.*t9-mu_B_ox.*t9-I_Bxy.*I_Byz.*mu_B_cz+I_Bxy.*I_Bzz.*mu_B_cy+I_Bxz.*I_Byy.*mu_B_cz-I_Bxz.*I_Byz.*mu_B_cy-I_Byy.*I_Bzz.*mu_B_cx+I_Bxy.*I_Byz.*mu_B_oz-I_Bxy.*I_Bzz.*mu_B_oy-I_Bxz.*I_Byy.*mu_B_oz+I_Bxz.*I_Byz.*mu_B_oy+I_Byy.*I_Bzz.*mu_B_ox+I_Byz.*t9.*t11+I_Byz.*t10.*t11-I_Byz.*t9.*t14-I_Byz.*t10.*t13+I_Byz.*t12.*t13-I_Byz.*t12.*t14+c_xx.*omega_Bx.*t9-phi01.*t9.*t15+phi1.*t9.*t15-I_Bxy.*I_Bxz.*I_Byy.*t11+I_Bxy.*I_Bxz.*I_Byy.*t13-I_Bxy.*I_Bxz.*I_Bzz.*t13-I_Byy.*I_Byz.*I_Bzz.*t11+I_Bxy.*I_Bxz.*I_Bzz.*t14+I_Byy.*I_Byz.*I_Bzz.*t14-I_Byy.*I_Bzz.*c_xx.*omega_Bx+I_Bxy.*I_Bzz.*c_yy.*omega_By-I_Bxz.*I_Byz.*c_yy.*omega_By-I_Bxy.*I_Byz.*c_zz.*omega_Bz+I_Bxz.*I_Byy.*c_zz.*omega_Bz+I_Byy.*I_Bzz.*phi01.*t15-I_Byy.*I_Bzz.*phi1.*t15-I_Bxy.*I_Bzz.*phi02.*t16+I_Bxy.*I_Bzz.*phi2.*t16+I_Bxz.*I_Byz.*phi02.*t16-I_Bxz.*I_Byz.*phi2.*t16+I_Bxy.*I_Byz.*phi03.*t17-I_Bxy.*I_Byz.*phi3.*t17-I_Bxz.*I_Byy.*phi03.*t17+I_Bxz.*I_Byy.*phi3.*t17-I_Bxy.*omega_Bx.*omega_Bz.*t9.*2.0+I_Bxz.*omega_Bx.*omega_By.*t9.*2.0-I_Byy.*omega_By.*omega_Bz.*t9+I_Bzz.*omega_By.*omega_Bz.*t9-I_Byy.*omega_By.*omega_Bz.*t12+I_Bzz.*omega_By.*omega_Bz.*t10-I_Bxy.*omega_Bx.*omega_Bz.*t18+I_Bxz.*omega_Bx.*omega_By.*t19-I_Byy.*omega_By.*omega_Bz.*t18+I_Bzz.*omega_By.*omega_Bz.*t19+I_Bxx.*I_Bxy.*I_Byz.*omega_Bx.*omega_By-I_Bxx.*I_Bxz.*I_Byy.*omega_Bx.*omega_By+I_Bxx.*I_Bxy.*I_Bzz.*omega_Bx.*omega_Bz-I_Bxx.*I_Bxz.*I_Byz.*omega_Bx.*omega_Bz-I_Bxy.*I_Byy.*I_Byz.*omega_Bx.*omega_By+I_Bxy.*I_Byy.*I_Bzz.*omega_Bx.*omega_Bz-I_Bxy.*I_Byz.*I_Bzz.*omega_Bx.*omega_By+I_Bxz.*I_Byy.*I_Byz.*omega_Bx.*omega_Bz-I_Bxz.*I_Byy.*I_Bzz.*omega_Bx.*omega_By+I_Bxz.*I_Byz.*I_Bzz.*omega_Bx.*omega_Bz);-t24.*(mu_B_cy.*t12-mu_B_oy.*t12+I_Bxx.*I_Byz.*mu_B_cz-I_Bxx.*I_Bzz.*mu_B_cy-I_Bxy.*I_Bxz.*mu_B_cz+I_Bxy.*I_Bzz.*mu_B_cx-I_Bxz.*I_Byz.*mu_B_cx-I_Bxx.*I_Byz.*mu_B_oz+I_Bxx.*I_Bzz.*mu_B_oy+I_Bxy.*I_Bxz.*mu_B_oz-I_Bxy.*I_Bzz.*mu_B_ox+I_Bxz.*I_Byz.*mu_B_ox-I_Bxz.*t9.*t11+I_Bxz.*t10.*t11+I_Bxz.*t9.*t14-I_Bxz.*t10.*t13-I_Bxz.*t12.*t13+I_Bxz.*t12.*t14+c_yy.*omega_By.*t12-phi02.*t12.*t16+phi2.*t12.*t16-I_Bxx.*I_Bxy.*I_Byz.*t11+I_Bxx.*I_Bxy.*I_Byz.*t13+I_Bxx.*I_Bxz.*I_Bzz.*t13+I_Bxy.*I_Byz.*I_Bzz.*t11-I_Bxx.*I_Bxz.*I_Bzz.*t14-I_Bxy.*I_Byz.*I_Bzz.*t14+I_Bxy.*I_Bzz.*c_xx.*omega_Bx-I_Bxz.*I_Byz.*c_xx.*omega_Bx-I_Bxx.*I_Bzz.*c_yy.*omega_By+I_Bxx.*I_Byz.*c_zz.*omega_Bz-I_Bxy.*I_Bxz.*c_zz.*omega_Bz-I_Bxy.*I_Bzz.*phi01.*t15+I_Bxy.*I_Bzz.*phi1.*t15+I_Bxz.*I_Byz.*phi01.*t15-I_Bxz.*I_Byz.*phi1.*t15+I_Bxx.*I_Bzz.*phi02.*t16-I_Bxx.*I_Bzz.*phi2.*t16-I_Bxx.*I_Byz.*phi03.*t17+I_Bxx.*I_Byz.*phi3.*t17+I_Bxy.*I_Bxz.*phi03.*t17-I_Bxy.*I_Bxz.*phi3.*t17+I_Bxx.*omega_Bx.*omega_Bz.*t9+I_Bxx.*omega_Bx.*omega_Bz.*t12+I_Bxy.*omega_By.*omega_Bz.*t12.*2.0-I_Byz.*omega_Bx.*omega_By.*t12.*2.0-I_Bzz.*omega_Bx.*omega_Bz.*t10-I_Bzz.*omega_Bx.*omega_Bz.*t12+I_Bxx.*omega_Bx.*omega_Bz.*t18+I_Bxy.*omega_By.*omega_Bz.*t18-I_Byz.*omega_Bx.*omega_By.*t25-I_Bzz.*omega_Bx.*omega_Bz.*t25+I_Bxx.*I_Bxy.*I_Bxz.*omega_Bx.*omega_By+I_Bxx.*I_Byy.*I_Byz.*omega_Bx.*omega_By-I_Bxy.*I_Bxz.*I_Byy.*omega_Bx.*omega_By-I_Bxx.*I_Bxy.*I_Bzz.*omega_By.*omega_Bz-I_Bxx.*I_Bxz.*I_Byz.*omega_By.*omega_Bz+I_Bxx.*I_Byz.*I_Bzz.*omega_Bx.*omega_By+I_Bxy.*I_Bxz.*I_Bzz.*omega_Bx.*omega_By-I_Bxy.*I_Byy.*I_Bzz.*omega_By.*omega_Bz+I_Bxz.*I_Byy.*I_Byz.*omega_By.*omega_Bz-I_Bxz.*I_Byz.*I_Bzz.*omega_By.*omega_Bz);-t24.*(mu_B_cz.*t10-mu_B_oz.*t10-I_Bxx.*I_Byy.*mu_B_cz+I_Bxx.*I_Byz.*mu_B_cy-I_Bxy.*I_Bxz.*mu_B_cy-I_Bxy.*I_Byz.*mu_B_cx+I_Bxz.*I_Byy.*mu_B_cx+I_Bxx.*I_Byy.*mu_B_oz-I_Bxx.*I_Byz.*mu_B_oy+I_Bxy.*I_Bxz.*mu_B_oy+I_Bxy.*I_Byz.*mu_B_ox-I_Bxz.*I_Byy.*mu_B_ox-I_Bxy.*t9.*t11-I_Bxy.*t10.*t11+I_Bxy.*t9.*t14+I_Bxy.*t10.*t13+I_Bxy.*t12.*t13-I_Bxy.*t12.*t14+c_zz.*omega_Bz.*t10-phi03.*t10.*t17+phi3.*t10.*t17+I_Bxx.*I_Bxy.*I_Byy.*t11-I_Bxx.*I_Bxy.*I_Byy.*t13-I_Bxx.*I_Bxz.*I_Byz.*t13+I_Bxz.*I_Byy.*I_Byz.*t11+I_Bxx.*I_Bxz.*I_Byz.*t14-I_Bxz.*I_Byy.*I_Byz.*t14-I_Bxy.*I_Byz.*c_xx.*omega_Bx+I_Bxz.*I_Byy.*c_xx.*omega_Bx+I_Bxx.*I_Byz.*c_yy.*omega_By-I_Bxy.*I_Bxz.*c_yy.*omega_By-I_Bxx.*I_Byy.*c_zz.*omega_Bz+I_Bxy.*I_Byz.*phi01.*t15-I_Bxy.*I_Byz.*phi1.*t15-I_Bxz.*I_Byy.*phi01.*t15+I_Bxz.*I_Byy.*phi1.*t15-I_Bxx.*I_Byz.*phi02.*t16+I_Bxx.*I_Byz.*phi2.*t16+I_Bxy.*I_Bxz.*phi02.*t16-I_Bxy.*I_Bxz.*phi2.*t16+I_Bxx.*I_Byy.*phi03.*t17-I_Bxx.*I_Byy.*phi3.*t17-I_Bxx.*omega_Bx.*omega_By.*t9-I_Bxx.*omega_Bx.*omega_By.*t10+I_Byy.*omega_Bx.*omega_By.*t10-I_Bxz.*omega_By.*omega_Bz.*t10.*2.0+I_Byy.*omega_Bx.*omega_By.*t12+I_Byz.*omega_Bx.*omega_Bz.*t10.*2.0-I_Bxx.*omega_Bx.*omega_By.*t19-I_Bxz.*omega_By.*omega_Bz.*t19+I_Byy.*omega_Bx.*omega_By.*t25+I_Byz.*omega_Bx.*omega_Bz.*t25-I_Bxx.*I_Bxy.*I_Bxz.*omega_Bx.*omega_Bz+I_Bxx.*I_Bxy.*I_Byz.*omega_By.*omega_Bz+I_Bxx.*I_Bxz.*I_Byy.*omega_By.*omega_Bz-I_Bxx.*I_Byy.*I_Byz.*omega_Bx.*omega_Bz-I_Bxy.*I_Bxz.*I_Byy.*omega_Bx.*omega_Bz-I_Bxx.*I_Byz.*I_Bzz.*omega_Bx.*omega_Bz+I_Bxy.*I_Bxz.*I_Bzz.*omega_Bx.*omega_Bz+I_Bxy.*I_Byy.*I_Byz.*omega_By.*omega_Bz-I_Bxy.*I_Byz.*I_Bzz.*omega_By.*omega_Bz+I_Bxz.*I_Byy.*I_Bzz.*omega_By.*omega_Bz);0.0;0.0;0.0;0.0;0.0;0.0;0.0;0.0;0.0;0.0;0.0;0.0;-t31.*t32.*(omega_Bx.*t4.*t5+omega_By.*t3.*t5-omega_Bz.*t8.*t28-omega_Bz.*t8.*t29);-t31.*(omega_Bx.*t3-omega_By.*t4);t31.*t32.*(omega_Bx.*t4+omega_By.*t3)];
