CREATE EXTENSION IF NOT EXISTS "uuid-ossp";
CREATE EXTENSION pgcrypto;

CREATE TABLE "CREDENTIAL"
(
    "ID"       uuid DEFAULT uuid_generate_v4(),
    "USERNAME" VARCHAR(50) UNIQUE NOT NULL,
    "PASSWORD" TEXT               NOT NULL,
    PRIMARY KEY ("ID")
);
-- https://x-team.com/blog/storing-secure-passwords-with-postgresql/

CREATE TABLE "SESSION"
(
    "ID"            uuid        DEFAULT uuid_generate_v4(),
    "CREDENTIAL_ID" uuid        NOT NULL,
    "TOKEN"         TEXT        NOT NULL,
    "EXPIRATION"    TIMESTAMP   NOT NULL,
    PRIMARY KEY ("ID")
);

CREATE TABLE "USER"
(
    "ID"                   uuid DEFAULT uuid_generate_v4(),
    "NAME"                 VARCHAR(100) NOT NULL,
    "SINCE"                TIMESTAMP    NOT NULL,
    "CREDENTIAL_ID"        uuid UNIQUE  NOT NULL,
    PRIMARY KEY ("ID"),
    FOREIGN KEY ("CREDENTIAL_ID") REFERENCES "CREDENTIAL" ("ID")
);
