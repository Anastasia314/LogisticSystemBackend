--create database logistic_system
--    with owner postgres;

create table users
(
    id          bigserial primary key,
    login       varchar(15) not null,
    enabled     boolean not null,
    password    varchar(90) not null
);

create table role
(
    id      bigserial primary key,
    role    varchar(20)not null
);

create table if not exists user_role
(
    user_id bigserial references users(id) on delete cascade on update cascade not null,
    role_id bigserial references role(id) on delete cascade on update cascade not null
 );
