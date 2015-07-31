function plotResultsOutput_withSkin(dataBaseFolder,XUpt, XPred,P, tK, yM,source)

if(nargin<2)
    load(strcat(dataBaseFolder,'filteredResult.mat'));
    tK = tKalman;
    yM = yMeas;
    source = 2;
    XUpt = Xupdt;
    XPred = Xhat;
    tMin = tK(1);
end

idx = 1;

% wrench above foot
stateVar = 7:12;
pT.titleText = {'E[f_o]',...
                'E[u_o]',...
                '',...
                '',...
                '',...
                ''
};
pT.xlabelText = {'Time t(sec)',...
                 'Time t(sec)',...
                 'Time t(sec)',...
                 'Time t(sec)',...
                 'Time t(sec)',...
                 'Time t(sec)'
};
pT.ylabelText = {'E[f_x] N',...
                 'E[u_x] Nm',...
                 'E[f_y] N',...
                 'E[u_y] Nm',...
                 'E[f_z] N'....
                 'E[u_z] Nm'
};
cols = {'b','b','g','g','r','r'};
plotFilterResultTimeSeries(tK(idx:end),XUpt(idx:end,:),yM(idx:end,:),P(:,:,idx:end),stateVar,pT,cols,[3,2]);

% wrench below foot
stateVar = 13:18;
pT.titleText = {'E[f_c]',...
                'E[u_c]',...
                '',...
                '',...
                '',...
                ''
};
cols = {'b','b','g','g','r','r'};
plotFilterResultTimeSeries(tK(idx:end),XUpt(idx:end,:),yM(idx:end,:),P(:,:,idx:end),stateVar,pT,cols,[3,2]);


% velocities
stateVar = 1:6;
pT.titleText = {'E[v_B]',...
                'E[\omega_B]',...
                '',...
                '',...
                '',...
                ''
};
pT.ylabelText = {'E[v_B_x] m/sec',...
                 'E[\omega_B_x] rad/sec',...
                 'E[v_B_y] N',...
                 'E[\omega_B_y] m/sec',...
                 'E[v_B_z] N'....
                 'E[\omega_B_z] rad/sec'
};
cols = {'b','b','g','g','r','r'};
%plotFilterResultTimeSeries(tK(idx:end),XUpt(idx:end,:),yM(idx:end,:),P(:,:,idx:end),stateVar,pT,cols,[3,2]);
plotFilterResultTimeSeries(tK(idx:end),XUpt(idx:end,:),[],P(:,:,idx:end),stateVar,pT,cols,[3,2]);

% orientation
stateVar = 19:21;
pT.titleText = {'Expectation of Orientation',...
                '',...
                '',...
                ''
};
pT.ylabelText = {'E[\phi_x] rads',...
                 'E[\phi_y] rads',...
                 'E[\phi_z] rads'
};
cols = {'b','g','r'};
plotFilterResultTimeSeries(tK(idx:end),XUpt(idx:end,:),[],P(:,:,idx:end),stateVar,pT,cols,[]);


% orientation just estimate plot
stateVar = 19:21;
pT.titleText = {'E[\phi]',...
                '',...
                '',...
                ''
};
pT.ylabelText = {'E[\phi_x] rads',...
                 'E[\phi_y] rads',...
                 'E[\phi_z rads'
};
cols = {'b','g','r'};
figure;
subplot(3,1,1);
plot(tK(idx:end),XUpt(idx:end,19),'color',cols{1});
title('Just Orientation estimate');
subplot(3,1,2);
plot(tK(idx:end),XUpt(idx:end,20),'color',cols{2});
subplot(3,1,3);
plot(tK(idx:end),XUpt(idx:end,21),'color',cols{3});
%plotFilterResultTimeSeries(tK(idx:end),XUpt(idx:end,:),[],P(:,:,idx:end),stateVar,pT,cols,[]);

    
% plot stiffness norm evolution plot
if(size(XUpt,2)>21)
    Knorm = zeros(size(tK));
    for(i = 1:9)
        Knorm(idx:end) = Knorm(idx:end) + XUpt(idx:end,21+i)'.^2;
    end
    Knorm = Knorm.^0.5;

    figure;
    plot(tK(idx:end),Knorm(idx:end));
    title('stiffness norm');
end


% FRI
if(source==2)
     plot_FRI(XUpt,P,XPred, P,tK, idx,length(tK));%,'b',index+5+figPreN);
 end


end
