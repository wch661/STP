

-------------------------------------------------------------------------------
--  account credential
-------------------------------------------------------------------------------
CREATE TABLE ACCOUNT_CREDENTIAL(
        ID BIGINT NOT NULL,
	PASSWORD VARCHAR(50),
        MODIFY_TIME DATETIME,
	EXPIRE_TIME DATETIME,
	EXPIRE_STATUS VARCHAR(50),
	REQUIRED VARCHAR(50),
	COULD_MODIFY VARCHAR(50),
	TYPE VARCHAR(50),
	CATALOG VARCHAR(50),
	DATA VARCHAR(200),
	STATUS VARCHAR(50),
	ACCOUNT_ID BIGINT,
        CONSTRAINT PK_ACCOUNT_CREDENTIAL PRIMARY KEY(ID),
        CONSTRAINT FK_ACCOUNT_CREDENTIAL_ACCOUNT FOREIGN KEY(ACCOUNT_ID) REFERENCES ACCOUNT_INFO(ID)
);

COMMENT ON TABLE ACCOUNT_CREDENTIAL IS '账号密码';
COMMENT ON COLUMN ACCOUNT_CREDENTIAL.ID IS '主键';
COMMENT ON COLUMN ACCOUNT_CREDENTIAL.PASSWORD IS '密码';
COMMENT ON COLUMN ACCOUNT_CREDENTIAL.MODIFY_TIME IS '修改时间';
COMMENT ON COLUMN ACCOUNT_CREDENTIAL.EXPIRE_TIME IS '过期时间';
COMMENT ON COLUMN ACCOUNT_CREDENTIAL.EXPIRE_STATUS IS '过期状态';
COMMENT ON COLUMN ACCOUNT_CREDENTIAL.REQUIRED IS '是否必须填写密码';
COMMENT ON COLUMN ACCOUNT_CREDENTIAL.COULD_MODIFY IS '是否可以修改';
COMMENT ON COLUMN ACCOUNT_CREDENTIAL.TYPE IS '类型，低级别密码，otp，ssh之类的类型';
COMMENT ON COLUMN ACCOUNT_CREDENTIAL.CATALOG IS '分类，默认密码，专用密码';
COMMENT ON COLUMN ACCOUNT_CREDENTIAL.DATA IS '额外信息';
COMMENT ON COLUMN ACCOUNT_CREDENTIAL.STATUS IS '状态，启用，禁用';
COMMENT ON COLUMN ACCOUNT_CREDENTIAL.ACCOUNT_ID IS '外键，账号信息';

