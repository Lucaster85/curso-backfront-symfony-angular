CREATE DATABASE IF NOT EXISTS curso_backfront;
USE curso_backfront;

CREATE TABLE users(
    id          int(255) not null auto_increment,
    role        VARCHAR(20),
    name        VARCHAR(100),
    surname     VARCHAR(100),
    email       VARCHAR(255),
    password    VARCHAR(255),
    created_at   datetime,
    CONSTRAINT  pk_users PRIMARY KEY(id)
)ENGINE=InnoDb;

CREATE TABLE tasks(
    id          int(255) not null auto_increment,
    user_id     int(255) not null,
    title       VARCHAR(255),
    description text,
    status      VARCHAR(100),
    created_at  datetime DEFAULT CURRENT_TIMESTAMP,
    updated_at  datetime,
    CONSTRAINT pk_tasks PRIMARY KEY(id),
    CONSTRAINT fk_tasks_users FOREIGN KEY(user_id) REFERENCES users(id)
)ENGINE=InnoDb;