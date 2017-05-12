close all;
clear all;
clc;
 
prompt = {'How many number do you want to sort?'};
dlg_title = 'Input Box (Heap Sort)';
num_lines= 1;
 
answer  = inputdlg(prompt,dlg_title,num_lines);
answer  = str2num(answer{1});
 
PrvArray = randperm(answer)
 
figure('Name','Simulation Plot Window (Heap Sort)','NumberTitle','off');
 
hold on;
title(['Simulation Plot Window (Heap Sort) - For ',num2str(answer),' random value']);
 
plot(PrvArray,'--rs','LineWidth',2,...
                'MarkerEdgeColor','k',...
                'MarkerFaceColor','g',...
                'MarkerSize',10)
hold on;
 
starttime=cputime;
AfterSort = heapSort(PrvArray)
 
plot(AfterSort,'--bo','LineWidth',2,...
                'MarkerEdgeColor','k',...
                'MarkerFaceColor','y',...
                'MarkerSize',10)
 
set(legend('Initial Condition','After Sort',2),'Interpreter','none');
 
xlabel('Numbers');
ylabel('Position');
