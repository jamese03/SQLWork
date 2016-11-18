-- James English Assignment 6 -- 

use jpj68;

CREATE TABLE MeetingRequestTB (MeetingRequestID int(10) Unique not null, RequestDate Date not null,
RequestTime time not null, MeetingLength time not null, ConvenerID int(10) not null, roomID int(3) not null,
MeetingType varchar(10), PRIMARY KEY (MeetingRequestID)); 

CREATE TABLE ParticipantsTB( MeetingRequestID int(10) Unique not null, EmployeeID int(6) Unique Not null, 
Prioritylvl char(1), PRIMARY KEY (MeetingRequestID));

Create TABLE EmployeeBlackoutTB( EmployeeID int (6) unique not null, StartDate date not null, EndDate date not null,
StartTime time not null, EndTime time not null, Reason varchar(20), PRIMARY KEY (EmployeeID) );

Create TABLE EmployeeTB ( EmployeeID int (6) unique not null, startDate date not null, endDate date, Fname varchar (15),
LName varchar (20) not null, position varchar (15) not null ); 

Create TABLE MeetingTypeTB (MeetingID int (5) unique not null, MeetingName varchar (20), MeetingDescription
varchar(90) not null, PRIMARY KEY (MeetingID) );


Create TABLE BlackoutReasonTB ( ReasonID int (1) not null, ReasonDescription varchar(50) not null, 
Primary KEY (ReasonID) );

Create TABLE MeetingStatusTB ( MeetingID int (5) unique not null, StatusDescription varchar (50) not null );

Create TABLE PriorityLevelTB( PriorityID int (6) unique not null, priorityDescription varchar(40) );

Create TABLE RoomTB ( RoomID int(6) unique not null, unavailableStartTime time, unavailableStartDate date,
unavailableEndTime time, unavailableEndDate date, PRIMARY KEY (RoomID));



