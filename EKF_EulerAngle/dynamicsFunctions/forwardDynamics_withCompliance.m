function xn = forwardDynamics_withCompliance( x0, model)

odeSettings      = odeset( 'InitialStep', 1e-8, 'MaxStep', 1e-3);

zeroForcedProcess = @(t,x) processODE_withCompliance(    x(1) ,x(2) ,x(3),...
    x(4) ,x(5) ,x(6),...
    x(7) ,x(8) ,x(9),...
    x(10),x(11),x(12),...
    x(13),x(14),x(15),...
    x(16),x(17),x(18),...
    x(19),x(20),x(21),...
    model.w(1),model.w(2),model.w(3),model.w(4),model.w(5),model.w(6),...
    model.phi0(1),model.phi0(2),model.phi0(3),...
    model.I(1,1), model.I(1,2),model.I(1,3),model.I(2,2),model.I(2,3),model.I(3,3),...
    model.m,model.G_g(1),model.G_g(2),model.G_g(3));

[~,x] = ode15s(zeroForcedProcess,[0 model.dtKalman], x0, odeSettings);
xn = x(end,:)';




end
