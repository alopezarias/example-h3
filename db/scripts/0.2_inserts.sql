INSERT INTO "CREDENTIAL" ("ID", "USERNAME", "PASSWORD")
VALUES ('6b8237e6-20eb-4d59-85eb-983bdad868a4', 'admin', crypt('admin', gen_salt('bf')));

INSERT INTO "USER" ("ID", "NAME", "SINCE", "CREDENTIAL_ID")
VALUES ('433ea28f-b40d-47e5-a566-8b27a5bcb641', 'Admin', '2020-01-01T00:00Z', '6b8237e6-20eb-4d59-85eb-983bdad868a4');

