import plotting_modules,glob
sfile = 'CCF/2019_06_10_00_00_00T2019_06_10_08_00_00.h5'
stackedfiles = 'STACK/*/*.h5'
plotting_modules.plot_substack_cc(sfile,0.1,0.2,200,True,'CCF/figures')
plotting_modules.plot_all_moveout(stackedfiles,'Allstack_linear',0.1,0.2,'ZZ',1,300,True,'STACK')
