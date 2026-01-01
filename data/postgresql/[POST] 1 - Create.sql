create table if not exists DevDataBase (
    id  serial PRIMARY KEY,
    username  varchar(50) not null,
    email varchar(50) not null
);