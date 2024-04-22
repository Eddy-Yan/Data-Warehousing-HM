CREATE SCHEMA IF NOT EXISTS "electricvehicle";

CREATE  TABLE "electricvehicle".dim_cafv_eligibility_type ( 
	cafv_eligibility_type_id integer  NOT NULL  ,
	cafv_eligibility_type varchar(255)    ,
	CONSTRAINT pk_dim_cafv_eligibility PRIMARY KEY ( cafv_eligibility_type_id )
 );

CREATE  TABLE "electricvehicle".dim_electric_vehicle_type ( 
	electric_vehicle_type_id integer  NOT NULL  ,
	electric_vehicle_type varchar(255)    ,
	CONSTRAINT pk_dim_vehicle_type PRIMARY KEY ( electric_vehicle_type_id )
 );

CREATE  TABLE "electricvehicle".dim_location ( 
	location_id          integer  NOT NULL  ,
	county               varchar(255)    ,
	city                 varchar(255)    ,
	"state"              varchar(255)    ,
	zip_code             varchar(255)    ,
	CONSTRAINT pk_dim_location PRIMARY KEY ( location_id )
 );

CREATE  TABLE "electricvehicle".dim_vehicle ( 
	vin                  varchar(255)  NOT NULL  ,
	make                 varchar(255)    ,
	model                varchar(25)    ,
	model_year           integer    ,
	CONSTRAINT pk_dim_vehicle PRIMARY KEY ( vin )
 );

CREATE  TABLE "electricvehicle".facts_vehicles ( 
	fact_id              bigint  NOT NULL  ,
	electric_range       integer    ,
	base_msrp            integer    ,
	location_id          integer  NOT NULL  ,
	vin                  varchar(255)  NOT NULL  ,
	electric_vehicle_type_id integer  NOT NULL  ,
	cafv_eligibiliby_type_id integer    ,
	CONSTRAINT pk_facts_vehicles PRIMARY KEY ( fact_id )
 );

CREATE UNIQUE INDEX unq_electric_vehicle_type_id ON "electricvehicle".facts_vehicles ( electric_vehicle_type_id );

CREATE UNIQUE INDEX unq_cafv_eligibiliby_id ON "electricvehicle".facts_vehicles ( cafv_eligibiliby_type_id );