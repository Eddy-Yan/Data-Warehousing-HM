CREATE SCHEMA INSTANCE;

CREATE TABLE ElectricVehiclePopulation_dw_lgl.INSTANCE.dim_CAFV_eligibility ( 
	CAFV_eligibility_id int64 NOT NULL  
 );

ALTER TABLE ElectricVehiclePopulation_dw_lgl.INSTANCE.dim_CAFV_eligibility ADD PRIMARY KEY ( CAFV_eligibility_id )  NOT ENFORCED;

CREATE TABLE ElectricVehiclePopulation_dw_lgl.INSTANCE.dim_electric_utility ( 
	electric_utility_id int64 NOT NULL  
 );

ALTER TABLE ElectricVehiclePopulation_dw_lgl.INSTANCE.dim_electric_utility ADD PRIMARY KEY ( electric_utility_id )  NOT ENFORCED;

CREATE TABLE ElectricVehiclePopulation_dw_lgl.INSTANCE.dim_electric_vehicle_type ( 
	electric_vehicle_type_id int64 NOT NULL  
 );

ALTER TABLE ElectricVehiclePopulation_dw_lgl.INSTANCE.dim_electric_vehicle_type ADD PRIMARY KEY ( electric_vehicle_type_id )  NOT ENFORCED;

CREATE TABLE ElectricVehiclePopulation_dw_lgl.INSTANCE.dim_location ( 
	location_id int64 NOT NULL  ,
	state string  ,
	county string  ,
	city string  ,
	postal_code string  
 );

ALTER TABLE ElectricVehiclePopulation_dw_lgl.INSTANCE.dim_location ADD PRIMARY KEY ( location_id )  NOT ENFORCED;

CREATE TABLE ElectricVehiclePopulation_dw_lgl.INSTANCE.dim_vehicle ( 
	VIN string NOT NULL  ,
	make string  ,
	model string  ,
	model_year int64  
 );

ALTER TABLE ElectricVehiclePopulation_dw_lgl.INSTANCE.dim_vehicle ADD PRIMARY KEY ( VIN )  NOT ENFORCED;

CREATE TABLE ElectricVehiclePopulation_dw_lgl.INSTANCE.facts_vehicles ( 
	fact_id int64 NOT NULL  ,
	electric_range int64  ,
	base_MSRP int64  ,
	location_id int64 NOT NULL  ,
	VIN int64 NOT NULL  ,
	electric_vehicle_type_id int64  ,
	CAFV_eligibiliby_id int64  ,
	electric_utility_id int64  
 );

ALTER TABLE ElectricVehiclePopulation_dw_lgl.INSTANCE.facts_vehicles ADD PRIMARY KEY ( fact_id, location_id, VIN )  NOT ENFORCED;
