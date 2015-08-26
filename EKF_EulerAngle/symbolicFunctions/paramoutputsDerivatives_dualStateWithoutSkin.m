function dg_dw_withoutSkin = paramoutputsDerivatives_dualStateWithoutSkin(v_Bx,v_By,v_Bz,omega_Bx,omega_By,omega_Bz,f_B_ox,f_B_oy,f_B_oz,mu_B_ox,mu_B_oy,mu_B_oz,f_B_cx,f_B_cy,f_B_cz,mu_B_cx,mu_B_cy,mu_B_cz,phi1,phi2,phi3,k_xx,k_yy,k_zz,c_xx,c_yy,c_zz,phi01,phi02,phi03,I_Bxx,I_Bxy,I_Bxz,I_Byy,I_Byz,I_Bzz,m,G_g1,G_g2,G_g3)
%PARAMOUTPUTSDERIVATIVES_DUALSTATEWITHOUTSKIN
%    DG_DW_WITHOUTSKIN = PARAMOUTPUTSDERIVATIVES_DUALSTATEWITHOUTSKIN(V_BX,V_BY,V_BZ,OMEGA_BX,OMEGA_BY,OMEGA_BZ,F_B_OX,F_B_OY,F_B_OZ,MU_B_OX,MU_B_OY,MU_B_OZ,F_B_CX,F_B_CY,F_B_CZ,MU_B_CX,MU_B_CY,MU_B_CZ,PHI1,PHI2,PHI3,K_XX,K_YY,K_ZZ,C_XX,C_YY,C_ZZ,PHI01,PHI02,PHI03,I_BXX,I_BXY,I_BXZ,I_BYY,I_BYZ,I_BZZ,M,G_G1,G_G2,G_G3)

%    This function was generated by the Symbolic Math Toolbox version 6.2.
%    25-Aug-2015 18:59:21

t2 = I_Byz.^2;
t3 = I_Bxx.*t2;
t4 = I_Bxz.^2;
t5 = I_Byy.*t4;
t6 = I_Bxy.^2;
t7 = I_Bzz.*t6;
t10 = I_Bxx.*I_Byy.*I_Bzz;
t11 = I_Bxy.*I_Bxz.*I_Byz.*2.0;
t8 = t3+t5+t7-t10-t11;
t9 = 1.0./t8;
t12 = I_Bxy.*I_Byz.*k_xx.*phi01.*2.0;
t13 = I_Bxz.*I_Byy.*k_xx.*phi1.*2.0;
t75 = I_Bxy.*I_Byz.*k_xx.*phi1.*2.0;
t76 = I_Bxz.*I_Byy.*k_xx.*phi01.*2.0;
t14 = t12+t13-t75-t76;
t15 = I_Bxx.*I_Byz.*k_yy.*phi02.*2.0;
t16 = I_Bxy.*I_Bxz.*k_yy.*phi2.*2.0;
t77 = I_Bxx.*I_Byz.*k_yy.*phi2.*2.0;
t78 = I_Bxy.*I_Bxz.*k_yy.*phi02.*2.0;
t17 = t15+t16-t77-t78;
t18 = k_zz.*phi03.*t6.*2.0;
t19 = I_Bxx.*I_Byy.*k_zz.*phi3.*2.0;
t79 = k_zz.*phi3.*t6.*2.0;
t80 = I_Bxx.*I_Byy.*k_zz.*phi03.*2.0;
t20 = t18+t19-t79-t80;
t21 = I_Bxy.*I_Byz.*omega_Bx;
t81 = I_Bxz.*I_Byy.*omega_Bx;
t22 = t21-t81;
t23 = I_Bxx.*I_Byz.*omega_By;
t82 = I_Bxy.*I_Bxz.*omega_By;
t24 = t23-t82;
t25 = omega_Bz.*t6;
t83 = I_Bxx.*I_Byy.*omega_Bz;
t26 = t25-t83;
t27 = I_Bxy.*I_Bzz.*k_xx.*phi01.*2.0;
t28 = I_Bxz.*I_Byz.*k_xx.*phi1.*2.0;
t66 = I_Bxy.*I_Bzz.*k_xx.*phi1.*2.0;
t67 = I_Bxz.*I_Byz.*k_xx.*phi01.*2.0;
t29 = t27+t28-t66-t67;
t30 = k_xx.*phi01.*t2.*2.0;
t31 = I_Byy.*I_Bzz.*k_xx.*phi1.*2.0;
t57 = k_xx.*phi1.*t2.*2.0;
t58 = I_Byy.*I_Bzz.*k_xx.*phi01.*2.0;
t32 = t30+t31-t57-t58;
t33 = I_Bxy.*I_Bzz.*k_yy.*phi02.*2.0;
t34 = I_Bxz.*I_Byz.*k_yy.*phi2.*2.0;
t59 = I_Bxy.*I_Bzz.*k_yy.*phi2.*2.0;
t60 = I_Bxz.*I_Byz.*k_yy.*phi02.*2.0;
t35 = t33+t34-t59-t60;
t36 = k_yy.*phi02.*t4.*2.0;
t37 = I_Bxx.*I_Bzz.*k_yy.*phi2.*2.0;
t68 = k_yy.*phi2.*t4.*2.0;
t69 = I_Bxx.*I_Bzz.*k_yy.*phi02.*2.0;
t38 = t36+t37-t68-t69;
t39 = I_Bxx.*I_Byz.*k_zz.*phi03.*2.0;
t40 = I_Bxy.*I_Bxz.*k_zz.*phi3.*2.0;
t70 = I_Bxx.*I_Byz.*k_zz.*phi3.*2.0;
t71 = I_Bxy.*I_Bxz.*k_zz.*phi03.*2.0;
t41 = t39+t40-t70-t71;
t42 = I_Bxy.*I_Byz.*k_zz.*phi03.*2.0;
t43 = I_Bxz.*I_Byy.*k_zz.*phi3.*2.0;
t61 = I_Bxy.*I_Byz.*k_zz.*phi3.*2.0;
t62 = I_Bxz.*I_Byy.*k_zz.*phi03.*2.0;
t44 = t42+t43-t61-t62;
t45 = I_Bxy.*I_Bzz.*omega_Bx;
t72 = I_Bxz.*I_Byz.*omega_Bx;
t46 = t45-t72;
t47 = omega_Bx.*t2;
t63 = I_Byy.*I_Bzz.*omega_Bx;
t48 = t47-t63;
t49 = I_Bxy.*I_Bzz.*omega_By;
t64 = I_Bxz.*I_Byz.*omega_By;
t50 = t49-t64;
t51 = omega_By.*t4;
t73 = I_Bxx.*I_Bzz.*omega_By;
t52 = t51-t73;
t53 = I_Bxx.*I_Byz.*omega_Bz;
t74 = I_Bxy.*I_Bxz.*omega_Bz;
t54 = t53-t74;
t55 = I_Bxy.*I_Byz.*omega_Bz;
t65 = I_Bxz.*I_Byy.*omega_Bz;
t56 = t55-t65;
dg_dw_withoutSkin = reshape([-t9.*t14.*v_By-t9.*t29.*v_Bz,t9.*t14.*v_Bx+t9.*t32.*v_Bz,t9.*t29.*v_Bx-t9.*t32.*v_By,t9.*t32,t9.*t29,-t9.*t14,0.0,0.0,0.0,0.0,0.0,0.0,t9.*t17.*v_By-t9.*t38.*v_Bz,-t9.*t17.*v_Bx+t9.*t35.*v_Bz,-t9.*t35.*v_By+t9.*t38.*v_Bx,t9.*t35,t9.*t38,t9.*t17,0.0,0.0,0.0,0.0,0.0,0.0,t9.*t20.*v_By-t9.*t41.*v_Bz,-t9.*t20.*v_Bx-t9.*t44.*v_Bz,t9.*t41.*v_Bx+t9.*t44.*v_By,-t9.*t44,t9.*t41,t9.*t20,0.0,0.0,0.0,0.0,0.0,0.0,t9.*t22.*v_By+t9.*t46.*v_Bz,-t9.*t22.*v_Bx-t9.*t48.*v_Bz,-t9.*t46.*v_Bx+t9.*t48.*v_By,-t9.*t48,-t9.*t46,t9.*t22,0.0,0.0,0.0,0.0,0.0,0.0,-t9.*t24.*v_By+t9.*t52.*v_Bz,t9.*t24.*v_Bx-t9.*t50.*v_Bz,t9.*t50.*v_By-t9.*t52.*v_Bx,-t9.*t50,-t9.*t52,-t9.*t24,0.0,0.0,0.0,0.0,0.0,0.0,-t9.*t26.*v_By+t9.*t54.*v_Bz,t9.*t26.*v_Bx+t9.*t56.*v_Bz,-t9.*t54.*v_Bx-t9.*t56.*v_By,t9.*t56,-t9.*t54,-t9.*t26,0.0,0.0,0.0,0.0,0.0,0.0],[12, 6]);
