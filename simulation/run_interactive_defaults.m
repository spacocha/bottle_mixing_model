[time_slices, concs_history, rates_history] = lake( ...
	0.0,	... oxygen_bubble_rate
	0.0,	... nitrogen_source
	0,	... nitrogen_ratio
	0,	... carbon_source
	0,	... oxygen_source
	100.0,	... methane_source
	0.00,	... t_max
	0,	... fe_precipitation
    0,    ... carbon precip
	50.0,	... diffusion_constant
	10, 	... ma_op_o_fe_rate_const
	5.0,	... ma_op_o_n_rate_const
	0.16,	... ma_op_o_s_rate_const
	1.0,	... ma_op_fe_n_rate_const
	1e4,    ... ma_op_ch4_o_rate_const
	0.01,	... ma_op_ch4_s_rate_const
	1,	    ... primary_ox_rate_const
	20.0,	... c_lim_o
	5.0,	... c_lim_n
	60,	    ... c_lim_fe
	30,	    ... c_lim_s
	200.0,	... concs0_c
	237.0,	... concs0_o- amount in sat with air
	100.0,	... concs0_ntot
	10.0,	... pm_ratio_n
	60.0,	... concs0_fetot
	10.0,	... pm_ratio_fe
	250.0,	... concs0_stot
	10.0	... pm_ratio_s
);
