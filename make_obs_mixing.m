%record observation data and idenfity the best mixing rate
obs0=[0.634,	-0.008,	-0.004,	-0.007,	-0.007];
obs05=[0.5423,	0.065,	-0.002,	-0.005,	-0.002];
obs1=[0.461,	0.107,	0.006,	-0.006,	-0.003];
obs15=[0.417,	0.134,	0.019,	-0.001,	-0.006];
obs2=[0.366,	0.153,	0.039,	0.005,	0.007];
obs25=[0.365,	0.163,	0.054,	0.014,	0.001];
obs3=[0.329,	0.166,	0.052,	0.013,	0.002];
obs35=[0.299,	0.169,	0.062,	0.022,	0.008];
obs4=[0.283,	0.166,	0.066,	0.025,	0.006];
obs22=[0.139,	0.127,	0.101,	0.09,	0.075];
obs24=[0.125,	0.114,	0.096,	0.081,	0.07];
%record time steps
obs_time=[0, 0.02083, 0.04166, 0.0625, 0.08333, 0.104166, 0.125, 0.145833, 0.16667,0.9166 ,1];
%make matrix
obs_history(1,:)=obs1;
obs_history(2,:)=obs05;
obs_history(3,:)=obs1;
obs_history(4,:)=obs15;
obs_history(5,:)=obs2;
obs_history(6,:)=obs25;
obs_history(7,:)=obs3;
obs_history(8,:)=obs35;
obs_history(9,:)=obs4;
obs_history(10,:)=obs22;
obs_history(11,:)=obs24;

%pull out corresponding model values
index=[1,3,5,7,9,11,13,15, 17, 92 ,100];
%concs_history(index,:,1);
%overall_diff=sum(rmse(concs_history(index,:,1), obs_history));

%Save this for different mixing rates by making 
%run interactive defaults have an input parameter somehow
idx=1;
for mixrate = 1000:100:5000
 [time_slices, concs_history, rates_history]=run_interactive_defaults_mixing_optimize(mixrate);
 %record results
 results(idx,1)=mixrate;
 results(idx,2)=sum(rmse(concs_history(index,:,1), obs_history));
 idx=idx+1;
end

[M,I]=min(results(:,2));
bestmix=results(I,1);
%Looks like the best one so run it

[time_slices, concs_history, rates_history] = run_interactive_defaults_mixing_optimize(bestmix);
scatter(365.*time_slices, concs_history(:,:,1))
hold on
scatter(obs_time,obs_history, 40, "filled")
xlabel("Time (days)");

