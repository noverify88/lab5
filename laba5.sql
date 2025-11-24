CREATE TABLE institutes {
id serial primary key
name varchar(1024) not null
};

create table groups{
id serial primary key
name varchar(2048) not null
short_name varchar(64) unique not null
year integer  not null
institute_id integer not null
}

create table students{
id serial primary key
surname varchar(512) not null
name varchar(512) not null
father_name varchar(512)
group_id integer not null
}