
ALTER TABLE Flight
	DROP
		CONSTRAINT FK_Passenger_TO_Flight
		CASCADE;

ALTER TABLE Flight
	DROP
		CONSTRAINT FK_Schedule_TO_Flight
		CASCADE;

ALTER TABLE Flight
	DROP
		CONSTRAINT FK_Member_TO_Flight
		CASCADE;

ALTER TABLE Seat
	DROP
		CONSTRAINT FK_Flight_TO_Seat
		CASCADE;

ALTER TABLE Register
	DROP
		CONSTRAINT FK_Schedule_TO_Register
		CASCADE;

ALTER TABLE Register
	DROP
		CONSTRAINT FK_Fare_TO_Register
		CASCADE;

ALTER TABLE Register
	DROP
		CONSTRAINT FK_City_TO_Register
		CASCADE;

ALTER TABLE PassengerInfo
	DROP
		CONSTRAINT FK_Flight_TO_PassengerInfo
		CASCADE;

ALTER TABLE PassengerInfo
	DROP
		CONSTRAINT FK_PassengerS_TO_PassengerInfo
		CASCADE;

ALTER TABLE MovieInsert
	DROP
		CONSTRAINT FK_TheaterInfo_TO_MovieInsert
		CASCADE;

ALTER TABLE MovieInsert
	DROP
		CONSTRAINT FK_MovieInfo_TO_MovieInsert
		CASCADE;

ALTER TABLE MovieReserve
	DROP
		CONSTRAINT FK_MovieInsert_TO_MovieReserve
		CASCADE;

ALTER TABLE MovieReserve
	DROP
		CONSTRAINT FK_Member_TO_MovieReserve
		CASCADE;

ALTER TABLE ReserveSit
	DROP
		CONSTRAINT FK_MovieInsert_TO_ReserveSit
		CASCADE;

ALTER TABLE SitInfo
	DROP
		CONSTRAINT FK_MovieReserve_TO_SitInfo
		CASCADE;

ALTER TABLE ReserveNo
	DROP
		CONSTRAINT FK_MovieReserve_TO_ReserveNo
		CASCADE;

ALTER TABLE TheaterSit
	DROP
		CONSTRAINT FK_TheaterInfo_TO_TheaterSit
		CASCADE;

ALTER TABLE Notice
	DROP
		CONSTRAINT FK_TheaterInfo_TO_Notice
		CASCADE;

ALTER TABLE Charge
	DROP
		CONSTRAINT FK_MovieInsert_TO_Charge
		CASCADE;

ALTER TABLE PlayInfo
	DROP
		CONSTRAINT FK_MovieInsert_TO_PlayInfo
		CASCADE;

ALTER TABLE MovieInfo
	DROP
		CONSTRAINT FK_ScreenGrade_TO_MovieInfo
		CASCADE;

ALTER TABLE FreeBoard
	DROP
		CONSTRAINT FK_Member_TO_FreeBoard
		CASCADE;

ALTER TABLE Reply
	DROP
		CONSTRAINT FK_FreeBoard_TO_Reply
		CASCADE;

ALTER TABLE Reply
	DROP
		CONSTRAINT FK_Member_TO_Reply
		CASCADE;

ALTER TABLE Flight
	DROP
		PRIMARY KEY
		CASCADE
		KEEP INDEX;

ALTER TABLE Schedule
	DROP
		PRIMARY KEY
		CASCADE
		KEEP INDEX;

ALTER TABLE Register
	DROP
		PRIMARY KEY
		CASCADE
		KEEP INDEX;

ALTER TABLE Passenger
	DROP
		PRIMARY KEY
		CASCADE
		KEEP INDEX;

ALTER TABLE PassengerS
	DROP
		PRIMARY KEY
		CASCADE
		KEEP INDEX;

ALTER TABLE Fare
	DROP
		PRIMARY KEY
		CASCADE
		KEEP INDEX;

ALTER TABLE City
	DROP
		PRIMARY KEY
		CASCADE
		KEEP INDEX;

ALTER TABLE MovieInsert
	DROP
		PRIMARY KEY
		CASCADE
		KEEP INDEX;

ALTER TABLE TheaterInfo
	DROP
		PRIMARY KEY
		CASCADE
		KEEP INDEX;

ALTER TABLE MovieReserve
	DROP
		PRIMARY KEY
		CASCADE
		KEEP INDEX;

ALTER TABLE ReserveNo
	DROP
		PRIMARY KEY
		CASCADE
		KEEP INDEX;

ALTER TABLE Notice
	DROP
		PRIMARY KEY
		CASCADE
		KEEP INDEX;

ALTER TABLE Charge
	DROP
		PRIMARY KEY
		CASCADE
		KEEP INDEX;

ALTER TABLE MovieInfo
	DROP
		PRIMARY KEY
		CASCADE
		KEEP INDEX;

ALTER TABLE ScreenGrade
	DROP
		PRIMARY KEY
		CASCADE
		KEEP INDEX;

ALTER TABLE FreeBoard
	DROP
		PRIMARY KEY
		CASCADE
		KEEP INDEX;


/* 항공편 예약 */
DROP TABLE Flight 
	CASCADE CONSTRAINTS;

/* 좌석 */
DROP TABLE Seat 
	CASCADE CONSTRAINTS;

/* 스케줄 */
DROP TABLE Schedule 
	CASCADE CONSTRAINTS;

/* 항공편 등록 */
DROP TABLE Register 
	CASCADE CONSTRAINTS;

/* 인원 */
DROP TABLE Passenger 
	CASCADE CONSTRAINTS;

/* 탑승자구분 */
DROP TABLE PassengerS 
	CASCADE CONSTRAINTS;

/* 운임 */
DROP TABLE Fare 
	CASCADE CONSTRAINTS;

/* 도시코드 */
DROP TABLE City 
	CASCADE CONSTRAINTS;

/* 탑승자정보 */
DROP TABLE PassengerInfo 
	CASCADE CONSTRAINTS;

/* 영화 등록 */
DROP TABLE MovieInsert 
	CASCADE CONSTRAINTS;

/* 영화관 정보 */
DROP TABLE TheaterInfo 
	CASCADE CONSTRAINTS;

/* 영화 예매 */
DROP TABLE MovieReserve 
	CASCADE CONSTRAINTS;

/* 잔여좌석 */
DROP TABLE ReserveSit 
	CASCADE CONSTRAINTS;

/* 좌석정보 */
DROP TABLE SitInfo 
	CASCADE CONSTRAINTS;

/* 예매인원 */
DROP TABLE ReserveNo 
	CASCADE CONSTRAINTS;

/* 영화관좌석 */
DROP TABLE TheaterSit 
	CASCADE CONSTRAINTS;

/* 공지사항 */
DROP TABLE Notice 
	CASCADE CONSTRAINTS;

/* 요금정보 */
DROP TABLE Charge 
	CASCADE CONSTRAINTS;

/* 시간정보 */
DROP TABLE PlayInfo 
	CASCADE CONSTRAINTS;

/* 영화정보 */
DROP TABLE MovieInfo 
	CASCADE CONSTRAINTS;

/* 상영등급 */
DROP TABLE ScreenGrade 
	CASCADE CONSTRAINTS;

/* 자유게시판 */
DROP TABLE FreeBoard 
	CASCADE CONSTRAINTS;

/* 자유게시판 댓글 */
DROP TABLE Reply 
	CASCADE CONSTRAINTS;


/********************************************************************************************************/
/* 회원 */

/* 항공편 예약 */
CREATE TABLE Flight (
	fl_No INTEGER NOT NULL, /* 예약번호 */
	mNo INTEGER, /* 회원번호 */
	fl_Fare NVARCHAR2(10), /* 운임 */
	fl_sys DATE, /* 예약일자 */
	p_No INTEGER, /* 인원식별번호 */
	s_Code INTEGER /* 스케줄코드 */
);

COMMENT ON TABLE Flight IS '항공편 예약';

COMMENT ON COLUMN Flight.fl_No IS '예약번호';

COMMENT ON COLUMN Flight.mNo IS '회원번호';

COMMENT ON COLUMN Flight.fl_Fare IS '운임';

COMMENT ON COLUMN Flight.fl_sys IS '예약일자';

COMMENT ON COLUMN Flight.p_No IS '인원식별번호';

COMMENT ON COLUMN Flight.s_Code IS '스케줄코드';

CREATE UNIQUE INDEX PK_Flight
	ON Flight (
		fl_No ASC
	);

ALTER TABLE Flight
	ADD
		CONSTRAINT PK_Flight
		PRIMARY KEY (
			fl_No
		);

/* 좌석 */
CREATE TABLE Seat (
	fl_No INTEGER, /* 예약번호 */
	seat_Class VARCHAR(10) /* 등급 */
);

COMMENT ON TABLE Seat IS '좌석';

COMMENT ON COLUMN Seat.fl_No IS '예약번호';

COMMENT ON COLUMN Seat.seat_Class IS '등급';

/* 스케줄 */
CREATE TABLE Schedule (
	s_Code INTEGER NOT NULL, /* 스케줄코드 */
	s_Flight NVARCHAR2(10), /* 편명 */
	s_DeptTime NVARCHAR2(10), /* 출발시간 */
	s_ArrtTime NVARCHAR2(10), /* 도착시간 */
	s_DepDay DATE, /* 가는날 */
	s_ArrDay DATE, /* 오는날 */
	s_FlightTime NVARCHAR2(10) /* 비행시간 */
);

COMMENT ON TABLE Schedule IS '스케줄';

COMMENT ON COLUMN Schedule.s_Code IS '스케줄코드';

COMMENT ON COLUMN Schedule.s_Flight IS '편명';

COMMENT ON COLUMN Schedule.s_DeptTime IS '출발시간';

COMMENT ON COLUMN Schedule.s_ArrtTime IS '도착시간';

COMMENT ON COLUMN Schedule.s_DepDay IS '가는날';

COMMENT ON COLUMN Schedule.s_ArrDay IS '오는날';

COMMENT ON COLUMN Schedule.s_FlightTime IS '비행시간';

CREATE UNIQUE INDEX PK_Schedule
	ON Schedule (
		s_Code ASC
	);

ALTER TABLE Schedule
	ADD
		CONSTRAINT PK_Schedule
		PRIMARY KEY (
			s_Code
		);

/* 항공편 등록 */
CREATE TABLE Register (
	r_No INTEGER NOT NULL, /* 등록번호 */
	s_Code INTEGER, /* 스케줄코드 */
	r_SeatTotal INTEGER, /* 총좌석 */
	fa_Code INTEGER, /* 운임코드 */
	c_No INTEGER /* 도시코드 */
);

COMMENT ON TABLE Register IS '항공편 등록';

COMMENT ON COLUMN Register.r_No IS '등록번호';

COMMENT ON COLUMN Register.s_Code IS '스케줄코드';

COMMENT ON COLUMN Register.r_SeatTotal IS '총좌석';

COMMENT ON COLUMN Register.fa_Code IS '운임코드';

COMMENT ON COLUMN Register.c_No IS '도시코드';

CREATE UNIQUE INDEX PK_Register
	ON Register (
		r_No ASC
	);

ALTER TABLE Register
	ADD
		CONSTRAINT PK_Register
		PRIMARY KEY (
			r_No
		);

/* 인원 */
CREATE TABLE Passenger (
	p_No INTEGER NOT NULL, /* 인원식별번호 */
	p_nAdult INTEGER, /* 성인수 */
	p_nChild INTEGER, /* 유아수 */
	p_nInfant INTEGER /* 소아수 */
);

COMMENT ON TABLE Passenger IS '인원';

COMMENT ON COLUMN Passenger.p_No IS '인원식별번호';

COMMENT ON COLUMN Passenger.p_nAdult IS '성인수';

COMMENT ON COLUMN Passenger.p_nChild IS '유아수';

COMMENT ON COLUMN Passenger.p_nInfant IS '소아수';

CREATE UNIQUE INDEX PK_Passenger
	ON Passenger (
		p_No ASC
	);

ALTER TABLE Passenger
	ADD
		CONSTRAINT PK_Passenger
		PRIMARY KEY (
			p_No
		);

/* 탑승자구분 */
CREATE TABLE PassengerS (
	ps_No INTEGER NOT NULL, /* 탑승자구분코드 */
	ps_Sort NVARCHAR2(20) /* 탑승자구분 */
);

COMMENT ON TABLE PassengerS IS '탑승자구분';

COMMENT ON COLUMN PassengerS.ps_No IS '탑승자구분코드';

COMMENT ON COLUMN PassengerS.ps_Sort IS '탑승자구분';

CREATE UNIQUE INDEX PK_PassengerS
	ON PassengerS (
		ps_No ASC
	);

ALTER TABLE PassengerS
	ADD
		CONSTRAINT PK_PassengerS
		PRIMARY KEY (
			ps_No
		);

/* 운임 */
CREATE TABLE Fare (
	fa_Code INTEGER NOT NULL, /* 운임코드 */
	fa_Adult NVARCHAR2(30), /* 성인운임 */
	fa_Child NVARCHAR2(30) /* 유아운임 */
);

COMMENT ON TABLE Fare IS '운임';

COMMENT ON COLUMN Fare.fa_Code IS '운임코드';

COMMENT ON COLUMN Fare.fa_Adult IS '성인운임';

COMMENT ON COLUMN Fare.fa_Child IS '유아운임';

CREATE UNIQUE INDEX PK_Fare
	ON Fare (
		fa_Code ASC
	);

ALTER TABLE Fare
	ADD
		CONSTRAINT PK_Fare
		PRIMARY KEY (
			fa_Code
		);

/* 도시코드 */
CREATE TABLE City (
	c_No INTEGER NOT NULL, /* 도시번호 */
	c_DepCity nVARCHAR2(20), /* 출발도시 */
	c_ArrCity nVARCHAR2(20) /* 도착도시 */
);

COMMENT ON TABLE City IS '도시코드';

COMMENT ON COLUMN City.c_No IS '도시번호';

COMMENT ON COLUMN City.c_DepCity IS '출발도시';

COMMENT ON COLUMN City.c_ArrCity IS '도착도시';

CREATE UNIQUE INDEX PK_City
	ON City (
		c_No ASC
	);

ALTER TABLE City
	ADD
		CONSTRAINT PK_City
		PRIMARY KEY (
			c_No
		);

/* 탑승자정보 */
CREATE TABLE PassengerInfo (
	fl_No INTEGER, /* 예약번호 */
	ps_No INTEGER, /* 탑승자구분코드 */
	lName NVARCHAR2(20), /* 성 */
	fName NVARCHAR2(20), /* 이름 */
	gender INTEGER /* 성별 */
);

COMMENT ON TABLE PassengerInfo IS '탑승자정보';

COMMENT ON COLUMN PassengerInfo.fl_No IS '예약번호';

COMMENT ON COLUMN PassengerInfo.ps_No IS '탑승자구분코드';

COMMENT ON COLUMN PassengerInfo.lName IS '성';

COMMENT ON COLUMN PassengerInfo.fName IS '이름';

COMMENT ON COLUMN PassengerInfo.gender IS '성별';

/* 영화 등록 */
CREATE TABLE MovieInsert (
	mNo INTEGER NOT NULL, /* 등록번호 */
	mCode INTEGER, /* 영화코드 */
	tCode INTEGER, /* 상영관코드 */
	mStart DATE, /* 상영시작일 */
	mEnd DATE /* 상영종료일 */
);

COMMENT ON TABLE MovieInsert IS '영화 등록';

COMMENT ON COLUMN MovieInsert.mNo IS '등록번호';

COMMENT ON COLUMN MovieInsert.mCode IS '영화코드';

COMMENT ON COLUMN MovieInsert.tCode IS '상영관코드';

COMMENT ON COLUMN MovieInsert.mStart IS '상영시작일';

COMMENT ON COLUMN MovieInsert.mEnd IS '상영종료일';

CREATE UNIQUE INDEX PK_MovieInsert
	ON MovieInsert (
		mNo ASC
	);

ALTER TABLE MovieInsert
	ADD
		CONSTRAINT PK_MovieInsert
		PRIMARY KEY (
			mNo
		);

/* 영화관 정보 */
CREATE TABLE TheaterInfo (
	tCode INTEGER NOT NULL, /* 상영관코드 */
	tName NVARCHAR2(20), /* 영화관명 */
	aCode INTEGER NOT NULL, /* 주소코드 */
	tScreen INTEGER, /* 스크린수 */
	tPhone VARCHAR2(30) /* 전화번호 */
);

COMMENT ON TABLE TheaterInfo IS '영화관 정보';

COMMENT ON COLUMN TheaterInfo.tCode IS '상영관코드';

COMMENT ON COLUMN TheaterInfo.tName IS '영화관명';

COMMENT ON COLUMN TheaterInfo.aCode IS '주소코드';

COMMENT ON COLUMN TheaterInfo.tScreen IS '스크린수';

COMMENT ON COLUMN TheaterInfo.tPhone IS '전화번호';

CREATE UNIQUE INDEX PK_TheaterInfo
	ON TheaterInfo (
		tCode ASC
	);

ALTER TABLE TheaterInfo
	ADD
		CONSTRAINT PK_TheaterInfo
		PRIMARY KEY (
			tCode
		);

/* 영화 예매 */
CREATE TABLE MovieReserve (
	rNo INTEGER NOT NULL, /* 예매번호 */
	mNo2 INTEGER, /* 회원번호 */
	mNo INTEGER, /* 등록번호 */
	tPrice INTEGER /* 총결제금액 */
);

COMMENT ON TABLE MovieReserve IS '영화 예매';

COMMENT ON COLUMN MovieReserve.rNo IS '예매번호';

COMMENT ON COLUMN MovieReserve.mNo2 IS '회원번호';

COMMENT ON COLUMN MovieReserve.mNo IS '등록번호';

COMMENT ON COLUMN MovieReserve.tPrice IS '총결제금액';

CREATE UNIQUE INDEX PK_MovieReserve
	ON MovieReserve (
		rNo ASC
	);

ALTER TABLE MovieReserve
	ADD
		CONSTRAINT PK_MovieReserve
		PRIMARY KEY (
			rNo
		);

/* 잔여좌석 */
CREATE TABLE ReserveSit (
	mNo INTEGER, /* 등록번호 */
	rScreenNo INTEGER, /* 상영관번호 */
	rSit INTEGER /* 잔여좌석 */
);

COMMENT ON TABLE ReserveSit IS '잔여좌석';

COMMENT ON COLUMN ReserveSit.mNo IS '등록번호';

COMMENT ON COLUMN ReserveSit.rScreenNo IS '상영관번호';

COMMENT ON COLUMN ReserveSit.rSit IS '잔여좌석';

/* 좌석정보 */
CREATE TABLE SitInfo (
	rNo INTEGER, /* 예매번호 */
	sNumber VARCHAR(5) /* 좌석번호 */
);

COMMENT ON TABLE SitInfo IS '좌석정보';

COMMENT ON COLUMN SitInfo.rNo IS '예매번호';

COMMENT ON COLUMN SitInfo.sNumber IS '좌석번호';

/* 예매인원 */
CREATE TABLE ReserveNo (
	rNo INTEGER NOT NULL, /* 예매번호 */
	rAdult INTEGER, /* 성인수 */
	rTeen INTEGER /* 청소년수 */
);

COMMENT ON TABLE ReserveNo IS '예매인원';

COMMENT ON COLUMN ReserveNo.rNo IS '예매번호';

COMMENT ON COLUMN ReserveNo.rAdult IS '성인수';

COMMENT ON COLUMN ReserveNo.rTeen IS '청소년수';

CREATE UNIQUE INDEX PK_ReserveNo
	ON ReserveNo (
		rNo ASC
	);

ALTER TABLE ReserveNo
	ADD
		CONSTRAINT PK_ReserveNo
		PRIMARY KEY (
			rNo
		);

/* 영화관좌석 */
CREATE TABLE TheaterSit (
	tCode INTEGER NOT NULL, /* 상영관코드 */
	tScreenNo INTEGER, /* 상영관번호 */
	tRow VARCHAR2(5), /* 행 */
	tColumn INTEGER /* 열 */
);

COMMENT ON TABLE TheaterSit IS '영화관좌석';

COMMENT ON COLUMN TheaterSit.tCode IS '상영관코드';

COMMENT ON COLUMN TheaterSit.tScreenNo IS '상영관번호';

COMMENT ON COLUMN TheaterSit.tRow IS '행';

COMMENT ON COLUMN TheaterSit.tColumn IS '열';

/* 공지사항 */
CREATE TABLE Notice (
	nNo INTEGER NOT NULL, /* 글번호 */
	tCode INTEGER, /* 상영관코드 */
	nName nVARCHAR2(50), /* 작성자 */
	nSubject NVARCHAR2(50), /* 제목 */
	nContent NVARCHAR2(1000), /* 내용 */
	nDate DATE, /* 작성일 */
	nHit INTEGER /* 조회수 */
);

COMMENT ON TABLE Notice IS '공지사항';

COMMENT ON COLUMN Notice.nNo IS '글번호';

COMMENT ON COLUMN Notice.tCode IS '상영관코드';

COMMENT ON COLUMN Notice.nName IS '작성자';

COMMENT ON COLUMN Notice.nSubject IS '제목';

COMMENT ON COLUMN Notice.nContent IS '내용';

COMMENT ON COLUMN Notice.nDate IS '작성일';

COMMENT ON COLUMN Notice.nHit IS '조회수';

CREATE UNIQUE INDEX PK_Notice
	ON Notice (
		nNo ASC
	);

ALTER TABLE Notice
	ADD
		CONSTRAINT PK_Notice
		PRIMARY KEY (
			nNo
		);

/* 요금정보 */
CREATE TABLE Charge (
	mNo INTEGER NOT NULL, /* 등록번호 */
	cTeen INTEGER, /* 청소년요금 */
	cAdult INTEGER /* 성인요금 */
);

COMMENT ON TABLE Charge IS '요금정보';

COMMENT ON COLUMN Charge.mNo IS '등록번호';

COMMENT ON COLUMN Charge.cTeen IS '청소년요금';

COMMENT ON COLUMN Charge.cAdult IS '성인요금';

CREATE UNIQUE INDEX PK_Charge
	ON Charge (
		mNo ASC
	);

ALTER TABLE Charge
	ADD
		CONSTRAINT PK_Charge
		PRIMARY KEY (
			mNo
		);

/* 시간정보 */
CREATE TABLE PlayInfo (
	mNo INTEGER, /* 등록번호 */
	pArea INTEGER, /* 상영관 */
	pPlayStart NVARCHAR2(10) /* 시작시간 */
);

COMMENT ON TABLE PlayInfo IS '시간정보';

COMMENT ON COLUMN PlayInfo.mNo IS '등록번호';

COMMENT ON COLUMN PlayInfo.pArea IS '상영관';

COMMENT ON COLUMN PlayInfo.pPlayStart IS '시작시간';

/* 영화정보 */
CREATE TABLE MovieInfo (
	mCode INTEGER NOT NULL, /* 영화코드 */
	mName NVARCHAR2(50), /* 영화명 */
	mPoster NVARCHAR2(50), /* 포스터 */
	mgenre  NVARCHAR2(10), /* 장르 */
	mDirector NVARCHAR2(20), /* 감독 */
	mTime NVARCHAR2(10), /* 상영시간 */
	mActor NVARCHAR2(100), /* 출연 */
	sCode INTEGER, /* 상영등급코드 */
	mPlayDate DATE, /* 개봉일 */
	mPoint FLOAT /* 평점 */
);

COMMENT ON TABLE MovieInfo IS '영화정보';

COMMENT ON COLUMN MovieInfo.mCode IS '영화코드';

COMMENT ON COLUMN MovieInfo.mName IS '영화명';

COMMENT ON COLUMN MovieInfo.mPoster IS '포스터';

COMMENT ON COLUMN MovieInfo.mgenre  IS '장르';

COMMENT ON COLUMN MovieInfo.mDirector IS '감독';

COMMENT ON COLUMN MovieInfo.mTime IS '상영시간';

COMMENT ON COLUMN MovieInfo.mActor IS '출연';

COMMENT ON COLUMN MovieInfo.sCode IS '상영등급코드';

COMMENT ON COLUMN MovieInfo.mPlayDate IS '개봉일';

COMMENT ON COLUMN MovieInfo.mPoint IS '평점';

CREATE UNIQUE INDEX PK_MovieInfo
	ON MovieInfo (
		mCode ASC
	);

ALTER TABLE MovieInfo
	ADD
		CONSTRAINT PK_MovieInfo
		PRIMARY KEY (
			mCode
		);

/* 상영등급 */
CREATE TABLE ScreenGrade (
	sCode INTEGER NOT NULL, /* 상영등급코드 */
	sGrade NVARCHAR2(10) /* 등급명 */
);

COMMENT ON TABLE ScreenGrade IS '상영등급';

COMMENT ON COLUMN ScreenGrade.sCode IS '상영등급코드';

COMMENT ON COLUMN ScreenGrade.sGrade IS '등급명';

CREATE UNIQUE INDEX PK_ScreenGrade
	ON ScreenGrade (
		sCode ASC
	);

ALTER TABLE ScreenGrade
	ADD
		CONSTRAINT PK_ScreenGrade
		PRIMARY KEY (
			sCode
		);

/* 자유게시판 */
CREATE TABLE FreeBoard (
	fNo INTEGER NOT NULL, /* 글번호 */
	mNo INTEGER, /* 회원번호 */
	fSubject NVARCHAR2(50), /* 제목 */
	fContent NVARCHAR2(1000), /* 내용 */
	fDate DATE, /* 작성일 */
	fHit INTEGER /* 조회수 */
);

COMMENT ON TABLE FreeBoard IS '자유게시판';

COMMENT ON COLUMN FreeBoard.fNo IS '글번호';

COMMENT ON COLUMN FreeBoard.mNo IS '회원번호';

COMMENT ON COLUMN FreeBoard.fSubject IS '제목';

COMMENT ON COLUMN FreeBoard.fContent IS '내용';

COMMENT ON COLUMN FreeBoard.fDate IS '작성일';

COMMENT ON COLUMN FreeBoard.fHit IS '조회수';

CREATE UNIQUE INDEX PK_FreeBoard
	ON FreeBoard (
		fNo ASC
	);

ALTER TABLE FreeBoard
	ADD
		CONSTRAINT PK_FreeBoard
		PRIMARY KEY (
			fNo
		);

/* 자유게시판 댓글 */
CREATE TABLE Reply (
	fNo INTEGER, /* 글번호 */
	mNo INTEGER, /* 회원번호 */
	rContent NVARCHAR2(1000), /* 내용 */
	rDate DATE /* 작성일 */
);

COMMENT ON TABLE Reply IS '자유게시판 댓글';

COMMENT ON COLUMN Reply.fNo IS '글번호';

COMMENT ON COLUMN Reply.mNo IS '회원번호';

COMMENT ON COLUMN Reply.rContent IS '내용';

COMMENT ON COLUMN Reply.rDate IS '작성일';


ALTER TABLE Flight
	ADD
		CONSTRAINT FK_Passenger_TO_Flight
		FOREIGN KEY (
			p_No
		)
		REFERENCES Passenger (
			p_No
		);

ALTER TABLE Flight
	ADD
		CONSTRAINT FK_Schedule_TO_Flight
		FOREIGN KEY (
			s_Code
		)
		REFERENCES Schedule (
			s_Code
		);

ALTER TABLE Flight
	ADD
		CONSTRAINT FK_Member_TO_Flight
		FOREIGN KEY (
			mNo
		)
		REFERENCES Member (
			mNo
		);

ALTER TABLE Seat
	ADD
		CONSTRAINT FK_Flight_TO_Seat
		FOREIGN KEY (
			fl_No
		)
		REFERENCES Flight (
			fl_No
		);

ALTER TABLE Register
	ADD
		CONSTRAINT FK_Schedule_TO_Register
		FOREIGN KEY (
			s_Code
		)
		REFERENCES Schedule (
			s_Code
		);

ALTER TABLE Register
	ADD
		CONSTRAINT FK_Fare_TO_Register
		FOREIGN KEY (
			fa_Code
		)
		REFERENCES Fare (
			fa_Code
		);

ALTER TABLE Register
	ADD
		CONSTRAINT FK_City_TO_Register
		FOREIGN KEY (
			c_No
		)
		REFERENCES City (
			c_No
		);

ALTER TABLE PassengerInfo
	ADD
		CONSTRAINT FK_Flight_TO_PassengerInfo
		FOREIGN KEY (
			fl_No
		)
		REFERENCES Flight (
			fl_No
		);

ALTER TABLE PassengerInfo
	ADD
		CONSTRAINT FK_PassengerS_TO_PassengerInfo
		FOREIGN KEY (
			ps_No
		)
		REFERENCES PassengerS (
			ps_No
		);

ALTER TABLE MovieInsert
	ADD
		CONSTRAINT FK_TheaterInfo_TO_MovieInsert
		FOREIGN KEY (
			tCode
		)
		REFERENCES TheaterInfo (
			tCode
		);

ALTER TABLE MovieInsert
	ADD
		CONSTRAINT FK_MovieInfo_TO_MovieInsert
		FOREIGN KEY (
			mCode
		)
		REFERENCES MovieInfo (
			mCode
		);

ALTER TABLE MovieReserve
	ADD
		CONSTRAINT FK_MovieInsert_TO_MovieReserve
		FOREIGN KEY (
			mNo
		)
		REFERENCES MovieInsert (
			mNo
		);

ALTER TABLE MovieReserve
	ADD
		CONSTRAINT FK_Member_TO_MovieReserve
		FOREIGN KEY (
			mNo2
		)
		REFERENCES Member (
			mNo
		);

ALTER TABLE ReserveSit
	ADD
		CONSTRAINT FK_MovieInsert_TO_ReserveSit
		FOREIGN KEY (
			mNo
		)
		REFERENCES MovieInsert (
			mNo
		);

ALTER TABLE SitInfo
	ADD
		CONSTRAINT FK_MovieReserve_TO_SitInfo
		FOREIGN KEY (
			rNo
		)
		REFERENCES MovieReserve (
			rNo
		);

ALTER TABLE ReserveNo
	ADD
		CONSTRAINT FK_MovieReserve_TO_ReserveNo
		FOREIGN KEY (
			rNo
		)
		REFERENCES MovieReserve (
			rNo
		);

ALTER TABLE TheaterSit
	ADD
		CONSTRAINT FK_TheaterInfo_TO_TheaterSit
		FOREIGN KEY (
			tCode
		)
		REFERENCES TheaterInfo (
			tCode
		);

ALTER TABLE Notice
	ADD
		CONSTRAINT FK_TheaterInfo_TO_Notice
		FOREIGN KEY (
			tCode
		)
		REFERENCES TheaterInfo (
			tCode
		);

ALTER TABLE Charge
	ADD
		CONSTRAINT FK_MovieInsert_TO_Charge
		FOREIGN KEY (
			mNo
		)
		REFERENCES MovieInsert (
			mNo
		);

ALTER TABLE PlayInfo
	ADD
		CONSTRAINT FK_MovieInsert_TO_PlayInfo
		FOREIGN KEY (
			mNo
		)
		REFERENCES MovieInsert (
			mNo
		);

ALTER TABLE MovieInfo
	ADD
		CONSTRAINT FK_ScreenGrade_TO_MovieInfo
		FOREIGN KEY (
			sCode
		)
		REFERENCES ScreenGrade (
			sCode
		);

ALTER TABLE FreeBoard
	ADD
		CONSTRAINT FK_Member_TO_FreeBoard
		FOREIGN KEY (
			mNo
		)
		REFERENCES Member (
			mNo
		);

ALTER TABLE Reply
	ADD
		CONSTRAINT FK_FreeBoard_TO_Reply
		FOREIGN KEY (
			fNo
		)
		REFERENCES FreeBoard (
			fNo
		)
		ON DELETE CASCADE;

ALTER TABLE Reply
	ADD
		CONSTRAINT FK_Member_TO_Reply
		FOREIGN KEY (
			mNo
		)
		REFERENCES Member (
			mNo
		);

