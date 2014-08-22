ALTER TABLE Member
	DROP
		CONSTRAINT FK_Sex_TO_Member
		CASCADE;

ALTER TABLE Member
	DROP
		CONSTRAINT FK_Birth_TO_Member
		CASCADE;

ALTER TABLE Member
	DROP
		CONSTRAINT FK_MemberShip_TO_Member
		CASCADE;

ALTER TABLE Member
	DROP
		CONSTRAINT FK_Address_TO_Member
		CASCADE;

ALTER TABLE Member
	DROP
		CONSTRAINT FK_ReceiveEMAIL_TO_Member
		CASCADE;

ALTER TABLE Member
	DROP
		CONSTRAINT FK_ReceiveSMS_TO_Member
		CASCADE;

ALTER TABLE Member
	DROP
		UNIQUE (
			mId
		)
		CASCADE
		KEEP INDEX;

ALTER TABLE Member
	DROP
		PRIMARY KEY
		CASCADE
		KEEP INDEX;

ALTER TABLE Sex
	DROP
		PRIMARY KEY
		CASCADE
		KEEP INDEX;

ALTER TABLE Birth
	DROP
		PRIMARY KEY
		CASCADE
		KEEP INDEX;

ALTER TABLE ReceiveEMAIL
	DROP
		PRIMARY KEY
		CASCADE
		KEEP INDEX;

ALTER TABLE MemberShip
	DROP
		PRIMARY KEY
		CASCADE
		KEEP INDEX;

ALTER TABLE Address
	DROP
		PRIMARY KEY
		CASCADE
		KEEP INDEX;



/* 회원 */
DROP TABLE Member 
	CASCADE CONSTRAINTS;

/* 성별 */
DROP TABLE Sex 
	CASCADE CONSTRAINTS;

/* 양력,음력 */
DROP TABLE Birth 
	CASCADE CONSTRAINTS;

/* 이메일수신여부 */
DROP TABLE ReceiveEMAIL 
	CASCADE CONSTRAINTS;

/* 회원등급 */
DROP TABLE MemberShip 
	CASCADE CONSTRAINTS;

/* 주소 */
DROP TABLE Address 
	CASCADE CONSTRAINTS;

/* SMS수신여부 */
DROP TABLE ReceiveSMS 
	CASCADE CONSTRAINTS;


/********************************************************************************************************/
/* 회원 */
CREATE TABLE Member (
	mNo INTEGER NOT NULL, /* 회원번호 */
	mId NVARCHAR2(40) NOT NULL, /* 아이디 */
	mPwd NVARCHAR2(40) NOT NULL, /* 비밀번호 */
	mName NVARCHAR2(100) NOT NULL, /* 이름 */
	sCode INTEGER NOT NULL, /* 성별코드 */
	mBirth DATE NOT NULL, /* 생년월일 */
	bCode INTEGER NOT NULL, /* 생일코드 */
	aCode INTEGER NOT NULL, /* 주소코드 */
	mDetailAddr NVARCHAR2(100), /* 상세주소 */
	mEmail NVARCHAR2(100) NOT NULL, /* 이메일 */
	eCode INTEGER, /* 이메일수신코드 */
	mPhone VARCHAR2(20) NOT NULL, /* 연락처 */
	pCode INTEGER, /* SMS수신코드 */
	mProduct INTEGER, /* 구매금액 */
	mCode INTEGER NOT NULL, /* 회원등급코드 */
	mJoinDate DATE NOT NULL, /* 가입일 */
	mProductNo INTEGER /* 구매횟수 */
);

COMMENT ON TABLE Member IS '회원';

COMMENT ON COLUMN Member.mNo IS '회원번호';

COMMENT ON COLUMN Member.mId IS '아이디';

COMMENT ON COLUMN Member.mPwd IS '비밀번호';

COMMENT ON COLUMN Member.mName IS '이름';

COMMENT ON COLUMN Member.sCode IS '성별코드';

COMMENT ON COLUMN Member.mBirth IS '생년월일';

COMMENT ON COLUMN Member.bCode IS '생일코드';

COMMENT ON COLUMN Member.aCode IS '주소코드';

COMMENT ON COLUMN Member.mDetailAddr IS '상세주소';

COMMENT ON COLUMN Member.mEmail IS '이메일';

COMMENT ON COLUMN Member.eCode IS '이메일수신코드';

COMMENT ON COLUMN Member.mPhone IS '연락처';

COMMENT ON COLUMN Member.pCode IS 'SMS수신코드';

COMMENT ON COLUMN Member.mProduct IS '구매금액';

COMMENT ON COLUMN Member.mCode IS '회원등급코드';

COMMENT ON COLUMN Member.mJoinDate IS '가입일';

COMMENT ON COLUMN Member.mProductNo IS '구매횟수';

CREATE UNIQUE INDEX PK_Member
	ON Member (
		mNo ASC
	);

CREATE UNIQUE INDEX UIX_Member
	ON Member (
		mId ASC
	);

ALTER TABLE Member
	ADD
		CONSTRAINT PK_Member
		PRIMARY KEY (
			mNo
		);

ALTER TABLE Member
	ADD
		CONSTRAINT UK_Member
		UNIQUE (
			mId
		);

/* 성별 */
CREATE TABLE Sex (
	sCode INTEGER NOT NULL, /* 성별코드 */
	sSex NVARCHAR2(6) NOT NULL /* 성별명 */
);

COMMENT ON TABLE Sex IS '성별';

COMMENT ON COLUMN Sex.sCode IS '성별코드';

COMMENT ON COLUMN Sex.sSex IS '성별명';

CREATE UNIQUE INDEX PK_Sex
	ON Sex (
		sCode ASC
	);

ALTER TABLE Sex
	ADD
		CONSTRAINT PK_Sex
		PRIMARY KEY (
			sCode
		);

/* 양력,음력 */
CREATE TABLE Birth (
	bCode INTEGER NOT NULL, /* 생일코드 */
	bBirth NVARCHAR2(6) NOT NULL /* 양력,음력 */
);

COMMENT ON TABLE Birth IS '양력,음력';

COMMENT ON COLUMN Birth.bCode IS '생일코드';

COMMENT ON COLUMN Birth.bBirth IS '양력,음력';

CREATE UNIQUE INDEX PK_Birth
	ON Birth (
		bCode ASC
	);

ALTER TABLE Birth
	ADD
		CONSTRAINT PK_Birth
		PRIMARY KEY (
			bCode
		);

/* 이메일수신여부 */
CREATE TABLE ReceiveEMAIL (
	eCode INTEGER NOT NULL, /* 이메일수신코드 */
	eReceive NVARCHAR2(10) NOT NULL /* 이메일수신여부 */
);

COMMENT ON TABLE ReceiveEMAIL IS '이메일수신여부';

COMMENT ON COLUMN ReceiveEMAIL.eCode IS '이메일수신코드';

COMMENT ON COLUMN ReceiveEMAIL.eReceive IS '이메일수신여부';

CREATE UNIQUE INDEX PK_ReceiveEMAIL
	ON ReceiveEMAIL (
		eCode ASC
	);

ALTER TABLE ReceiveEMAIL
	ADD
		CONSTRAINT PK_ReceiveEMAIL
		PRIMARY KEY (
			eCode
		);

/* 회원등급 */
CREATE TABLE MemberShip (
	mCode INTEGER NOT NULL, /* 회원등급코드 */
	mGrade NVARCHAR2(10) NOT NULL /* 회원등급명 */
);

COMMENT ON TABLE MemberShip IS '회원등급';

COMMENT ON COLUMN MemberShip.mCode IS '회원등급코드';

COMMENT ON COLUMN MemberShip.mGrade IS '회원등급명';

CREATE UNIQUE INDEX PK_MemberShip
	ON MemberShip (
		mCode ASC
	);

ALTER TABLE MemberShip
	ADD
		CONSTRAINT PK_MemberShip
		PRIMARY KEY (
			mCode
		);

/* 주소 */
CREATE TABLE Address (
	aCode INTEGER NOT NULL, /* 주소코드 */
	zipcode VARCHAR2(20) NOT NULL, /* 우편번호 */
	sido NVARCHAR2(20), /* 시도 */
	gugun NVARCHAR2(20), /* 구군 */
	dong NVARCHAR2(50), /* 동 */
	ri NVARCHAR2(20), /* 리 */
	bunji NVARCHAR2(20) /* 번지 */
);

COMMENT ON TABLE Address IS '주소';

COMMENT ON COLUMN Address.aCode IS '주소코드';

COMMENT ON COLUMN Address.zipcode IS '우편번호';

COMMENT ON COLUMN Address.sido IS '시도';

COMMENT ON COLUMN Address.gugun IS '구군';

COMMENT ON COLUMN Address.dong IS '동';

COMMENT ON COLUMN Address.ri IS '리';

COMMENT ON COLUMN Address.bunji IS '번지';

CREATE UNIQUE INDEX PK_Address
	ON Address (
		aCode ASC
	);

ALTER TABLE Address
	ADD
		CONSTRAINT PK_Address
		PRIMARY KEY (
			aCode
		);

/* SMS수신여부 */
CREATE TABLE ReceiveSMS (
	pCode INTEGER NOT NULL, /* SMS수신코드 */
	pReceive NVARCHAR2(10) /* SMS수신여부 */
);

COMMENT ON TABLE ReceiveSMS IS 'SMS수신여부';

COMMENT ON COLUMN ReceiveSMS.pCode IS 'SMS수신코드';

COMMENT ON COLUMN ReceiveSMS.pReceive IS 'SMS수신여부';

CREATE UNIQUE INDEX PK_ReceiveSMS
	ON ReceiveSMS (
		pCode ASC
	);

ALTER TABLE ReceiveSMS
	ADD
		CONSTRAINT PK_ReceiveSMS
		PRIMARY KEY (
			pCode
		);


ALTER TABLE Member
	ADD
		CONSTRAINT FK_Sex_TO_Member
		FOREIGN KEY (
			sCode
		)
		REFERENCES Sex (
			sCode
		);

ALTER TABLE Member
	ADD
		CONSTRAINT FK_Birth_TO_Member
		FOREIGN KEY (
			bCode
		)
		REFERENCES Birth (
			bCode
		);

ALTER TABLE Member
	ADD
		CONSTRAINT FK_MemberShip_TO_Member
		FOREIGN KEY (
			mCode
		)
		REFERENCES MemberShip (
			mCode
		);

ALTER TABLE Member
	ADD
		CONSTRAINT FK_Address_TO_Member
		FOREIGN KEY (
			aCode
		)
		REFERENCES Address (
			aCode
		);

ALTER TABLE Member
	ADD
		CONSTRAINT FK_ReceiveEMAIL_TO_Member
		FOREIGN KEY (
			eCode
		)
		REFERENCES ReceiveEMAIL (
			eCode
		);

ALTER TABLE Member
	ADD
		CONSTRAINT FK_ReceiveSMS_TO_Member
		FOREIGN KEY (
			pCode
		)
		REFERENCES ReceiveSMS (
			pCode
		);
