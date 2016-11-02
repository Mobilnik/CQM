CREATE SEQUENCE cqm_id_sequence
  MINVALUE 1
  MAXVALUE 9223372036854775808
  START WITH 9223372036854775808
  INCREMENT BY -1
  CACHE 100;

CREATE TABLE cqm_users (
  user_id    INT,
  first_name VARCHAR(100),
  last_name  VARCHAR(100),
  login      VARCHAR(100),
  email      VARCHAR(100),
  hash       VARCHAR(100),
  salt       VARCHAR(100),
  rating     INT,
  isAdmin    BOOLEAN,
  CONSTRAINT pk_user_id PRIMARY KEY (user_id),
  CONSTRAINT unique_user_email UNIQUE (email),
  CONSTRAINT unique_user_login UNIQUE (login)
);

CREATE TABLE cqm_cafeterias (
  cafe_id    INT,
  name       VARCHAR(100),
  address    VARCHAR(300),
  CONSTRAINT pk_cafe_id PRIMARY KEY (cafe_id)
);

CREATE TABLE cqm_reports (
  report_id  INT,
  user_id    INT,
  cafe_id    INT,
  load       INT,
  date       DATE,
  CONSTRAINT pk_report_id PRIMARY KEY (report_id),
  CONSTRAINT fk_reports_user FOREIGN KEY (user_id) REFERENCES cqm_users(user_id),
  CONSTRAINT fk_reports_cafe FOREIGN KEY (cafe_id) REFERENCES cqm_cafeterias(cafe_id)
);