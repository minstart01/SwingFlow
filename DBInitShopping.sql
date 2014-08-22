
ALTER TABLE LatelyShop
	DROP
		CONSTRAINT FK_Shop_TO_LatelyShop
		CASCADE;

ALTER TABLE LatelyShop
	DROP
		CONSTRAINT FK_Member_TO_LatelyShop
		CASCADE;

ALTER TABLE DownCoupon
	DROP
		CONSTRAINT FK_Coupon_TO_DownCoupon
		CASCADE;

ALTER TABLE DownCoupon
	DROP
		CONSTRAINT FK_Member_TO_DownCoupon
		CASCADE;

ALTER TABLE Coupon
	DROP
		CONSTRAINT FK_Shop_TO_Coupon
		CASCADE;

ALTER TABLE MExtInfo
	DROP
		CONSTRAINT FK_Member_TO_MExtInfo
		CASCADE;

ALTER TABLE BuyOrder
	DROP
		CONSTRAINT FK_Product_TO_BuyOrder
		CASCADE;

ALTER TABLE BuyOrder
	DROP
		CONSTRAINT FK_Member_TO_BuyOrder
		CASCADE;

ALTER TABLE LatelyProd
	DROP
		CONSTRAINT FK_Product_TO_LatelyProd
		CASCADE;

ALTER TABLE LatelyProd
	DROP
		CONSTRAINT FK_Member_TO_LatelyProd
		CASCADE;

ALTER TABLE Product
	DROP
		CONSTRAINT FK_ProdCate_TO_Product
		CASCADE;

ALTER TABLE Product
	DROP
		CONSTRAINT FK_Shop_TO_Product
		CASCADE;

ALTER TABLE Product
	DROP
		CONSTRAINT FK_Coupon_TO_Product
		CASCADE;

ALTER TABLE Product
	DROP
		CONSTRAINT FK_KindGubun_TO_Product
		CASCADE;

ALTER TABLE ShopCate
	DROP
		CONSTRAINT FK_DivGubun_TO_ShopCate
		CASCADE;

ALTER TABLE ShopCate
	DROP
		CONSTRAINT FK_KindGubun_TO_ShopCate
		CASCADE;


ALTER TABLE LatelyShop
	DROP
		PRIMARY KEY
		CASCADE
		KEEP INDEX;

ALTER TABLE DownCoupon
	DROP
		PRIMARY KEY
		CASCADE
		KEEP INDEX;

ALTER TABLE Coupon
	DROP
		PRIMARY KEY
		CASCADE
		KEEP INDEX;

ALTER TABLE MExtInfo
	DROP
		PRIMARY KEY
		CASCADE
		KEEP INDEX;

ALTER TABLE BuyOrder
	DROP
		PRIMARY KEY
		CASCADE
		KEEP INDEX;

ALTER TABLE LatelyProd
	DROP
		PRIMARY KEY
		CASCADE
		KEEP INDEX;

ALTER TABLE Product
	DROP
		PRIMARY KEY
		CASCADE
		KEEP INDEX;

ALTER TABLE Shop
	DROP
		PRIMARY KEY
		CASCADE
		KEEP INDEX;

ALTER TABLE ProdCate
	DROP
		PRIMARY KEY
		CASCADE
		KEEP INDEX;

ALTER TABLE KindGubun
	DROP
		PRIMARY KEY
		CASCADE
		KEEP INDEX;

ALTER TABLE ShopCate
	DROP
		PRIMARY KEY
		CASCADE
		KEEP INDEX;

ALTER TABLE DivGubun
	DROP
		PRIMARY KEY
		CASCADE
		KEEP INDEX;


/* latelyShopList */
DROP TABLE LatelyShop 
	CASCADE CONSTRAINTS;

/* downCouponList */
DROP TABLE DownCoupon 
	CASCADE CONSTRAINTS;

/* couponCodeList */
DROP TABLE Coupon 
	CASCADE CONSTRAINTS;

/* memberShoppintExtInfo */
DROP TABLE MExtInfo 
	CASCADE CONSTRAINTS;

/* MemberBuyOrderList */
DROP TABLE BuyOrder 
	CASCADE CONSTRAINTS;

/* latelyProdList */
DROP TABLE LatelyProd 
	CASCADE CONSTRAINTS;

/* ProductList */
DROP TABLE Product 
	CASCADE CONSTRAINTS;

/* ShopList */
DROP TABLE Shop 
	CASCADE CONSTRAINTS;

/* ProdCateList */
DROP TABLE ProdCate 
	CASCADE CONSTRAINTS;

/* kindCodeList */
DROP TABLE KindGubun 
	CASCADE CONSTRAINTS;

/* ShopCateList */
DROP TABLE ShopCate 
	CASCADE CONSTRAINTS;

/* divCodeList */
DROP TABLE DivGubun 
	CASCADE CONSTRAINTS;

/********************************************************************************************************/
/* latelyShopList */
CREATE TABLE LatelyShop (
	latelyShopSeq INTEGER NOT NULL, /* latelyShopSeq */
	mNo INTEGER, /* 회원번호 */
	shopSeq INTEGER, /* shopSeq */
	count INTEGER /* count */
);

COMMENT ON TABLE LatelyShop IS 'latelyShopList';

COMMENT ON COLUMN LatelyShop.latelyShopSeq IS 'latelyShopSeq';

COMMENT ON COLUMN LatelyShop.mNo IS '회원번호';

COMMENT ON COLUMN LatelyShop.shopSeq IS 'shopSeq';

COMMENT ON COLUMN LatelyShop.count IS 'count';

CREATE UNIQUE INDEX PK_LatelyShop
	ON LatelyShop (
		latelyShopSeq ASC
	);

ALTER TABLE LatelyShop
	ADD
		CONSTRAINT PK_LatelyShop
		PRIMARY KEY (
			latelyShopSeq
		);

/* downCouponList */
CREATE TABLE DownCoupon (
	downCouponSeq INTEGER NOT NULL, /* downCouponSeq */
	mNo INTEGER, /* 회원번호 */
	couponSeq INTEGER, /* couponSeq */
	couponCode NVARCHAR2(100), /* couponCode */
	downDate DATE /* downDate */
);

COMMENT ON TABLE DownCoupon IS 'downCouponList';

COMMENT ON COLUMN DownCoupon.downCouponSeq IS 'downCouponSeq';

COMMENT ON COLUMN DownCoupon.mNo IS '회원번호';

COMMENT ON COLUMN DownCoupon.couponSeq IS 'couponSeq';

COMMENT ON COLUMN DownCoupon.couponCode IS 'couponCode';

COMMENT ON COLUMN DownCoupon.downDate IS 'downDate';

CREATE UNIQUE INDEX PK_DownCoupon
	ON DownCoupon (
		downCouponSeq ASC
	);

ALTER TABLE DownCoupon
	ADD
		CONSTRAINT PK_DownCoupon
		PRIMARY KEY (
			downCouponSeq
		);

/* couponCodeList */
CREATE TABLE Coupon (
	couponSeq INTEGER NOT NULL, /* couponSeq */
	shopSeq INTEGER, /* shopSeq */
	couponName NVARCHAR2(200), /* couponName */
	expiryYn NVARCHAR2(1), /* expiryYn */
	expryDate DATE, /* expryDate */
	useCondition NVARCHAR2(500), /* useCondition */
	dcType NVARCHAR2(1), /* dcType */
	dcValue FLOAT, /* dcValue */
	totalCount INTEGER, /* totalCount */
	downCount INTEGER, /* downCount */
	cpnWebBnrPath NVARCHAR2(500), /* cpnWebBnrPath */
	cpnMobBnrPath NVARCHAR2(500), /* cpnMobBnrPath */
	cpnMobDtlPath NVARCHAR2(500) /* cpnMobDtlPath */
);

COMMENT ON TABLE Coupon IS 'couponCodeList';

COMMENT ON COLUMN Coupon.couponSeq IS 'couponSeq';

COMMENT ON COLUMN Coupon.shopSeq IS 'shopSeq';

COMMENT ON COLUMN Coupon.couponName IS 'couponName';

COMMENT ON COLUMN Coupon.expiryYn IS 'expiryYn';

COMMENT ON COLUMN Coupon.expryDate IS 'expryDate';

COMMENT ON COLUMN Coupon.useCondition IS 'useCondition';

COMMENT ON COLUMN Coupon.dcType IS 'dcType';

COMMENT ON COLUMN Coupon.dcValue IS 'dcValue';

COMMENT ON COLUMN Coupon.totalCount IS 'totalCount';

COMMENT ON COLUMN Coupon.downCount IS 'downCount';

COMMENT ON COLUMN Coupon.cpnWebBnrPath IS 'cpnWebBnrPath';

COMMENT ON COLUMN Coupon.cpnMobBnrPath IS 'cpnMobBnrPath';

COMMENT ON COLUMN Coupon.cpnMobDtlPath IS 'cpnMobDtlPath';

CREATE UNIQUE INDEX PK_Coupon
	ON Coupon (
		couponSeq ASC
	);

ALTER TABLE Coupon
	ADD
		CONSTRAINT PK_Coupon
		PRIMARY KEY (
			couponSeq
		);

/* memberShoppintExtInfo */
CREATE TABLE MExtInfo (
	mNo INTEGER NOT NULL, /* 회원번호 */
	mileage INTEGER /* mileage */
);

COMMENT ON TABLE MExtInfo IS 'memberShoppintExtInfo';

COMMENT ON COLUMN MExtInfo.mNo IS '회원번호';

COMMENT ON COLUMN MExtInfo.mileage IS 'mileage';

CREATE UNIQUE INDEX PK_MExtInfo
	ON MExtInfo (
		mNo ASC
	);

ALTER TABLE MExtInfo
	ADD
		CONSTRAINT PK_MExtInfo
		PRIMARY KEY (
			mNo
		);

/* MemberBuyOrderList */
CREATE TABLE BuyOrder (
	buyOrderSeq INTEGER NOT NULL, /* buyOrderSeq */
	mNo INTEGER NOT NULL, /* 회원번호 */
	buyDate DATE, /* buyDate */
	point INTEGER, /* point */
	prodSeq INTEGER /* prodSeq */
);

COMMENT ON TABLE BuyOrder IS 'MemberBuyOrderList';

COMMENT ON COLUMN BuyOrder.buyOrderSeq IS 'buyOrderSeq';

COMMENT ON COLUMN BuyOrder.mNo IS '회원번호';

COMMENT ON COLUMN BuyOrder.buyDate IS 'buyDate';

COMMENT ON COLUMN BuyOrder.point IS 'point';

COMMENT ON COLUMN BuyOrder.prodSeq IS 'prodSeq';

CREATE UNIQUE INDEX PK_BuyOrder
	ON BuyOrder (
		buyOrderSeq ASC,
		mNo ASC
	);

ALTER TABLE BuyOrder
	ADD
		CONSTRAINT PK_BuyOrder
		PRIMARY KEY (
			buyOrderSeq,
			mNo
		);

/* latelyProdList */
CREATE TABLE LatelyProd (
	latelyProdSeq INTEGER NOT NULL, /* latelyProdSeq */
	mNo INTEGER, /* 회원번호 */
	prodSeq INTEGER, /* prodSeq */
	count INTEGER /* count */
);

COMMENT ON TABLE LatelyProd IS 'latelyProdList';

COMMENT ON COLUMN LatelyProd.latelyProdSeq IS 'latelyProdSeq';

COMMENT ON COLUMN LatelyProd.mNo IS '회원번호';

COMMENT ON COLUMN LatelyProd.prodSeq IS 'prodSeq';

COMMENT ON COLUMN LatelyProd.count IS 'count';

CREATE UNIQUE INDEX PK_LatelyProd
	ON LatelyProd (
		latelyProdSeq ASC
	);

ALTER TABLE LatelyProd
	ADD
		CONSTRAINT PK_LatelyProd
		PRIMARY KEY (
			latelyProdSeq
		);

/* ProductList */
CREATE TABLE Product (
	prodSeq INTEGER NOT NULL, /* prodSeq */
	shopSeq INTEGER, /* shopSeq */
	prodCateSeq INTEGER, /* prodCateSeq */
	newYn VARCHAR2(1), /* newYn */
	imgPath NVARCHAR2(2000), /* imgPath */
	detailImgPath NVARCHAR2(2000), /* detailImgPath */
	price INTEGER, /* price */
	dcPrice INTEGER, /* dcPrice */
	bestOrder INTEGER, /* bestOrder */
	stickerPath NVARCHAR2(2000), /* stickerPath */
	kindSeq INTEGER, /* kindSeq */
	couponSeq INTEGER /* couponSeq */
);

COMMENT ON TABLE Product IS 'ProductList';

COMMENT ON COLUMN Product.prodSeq IS 'prodSeq';

COMMENT ON COLUMN Product.shopSeq IS 'shopSeq';

COMMENT ON COLUMN Product.prodCateSeq IS 'prodCateSeq';

COMMENT ON COLUMN Product.newYn IS 'newYn';

COMMENT ON COLUMN Product.imgPath IS 'imgPath';

COMMENT ON COLUMN Product.detailImgPath IS 'detailImgPath';

COMMENT ON COLUMN Product.price IS 'price';

COMMENT ON COLUMN Product.dcPrice IS 'dcPrice';

COMMENT ON COLUMN Product.bestOrder IS 'bestOrder';

COMMENT ON COLUMN Product.stickerPath IS 'stickerPath';

COMMENT ON COLUMN Product.kindSeq IS 'kindSeq';

COMMENT ON COLUMN Product.couponSeq IS 'couponSeq';

CREATE UNIQUE INDEX PK_Product
	ON Product (
		prodSeq ASC
	);

ALTER TABLE Product
	ADD
		CONSTRAINT PK_Product
		PRIMARY KEY (
			prodSeq
		);

/* ShopList */
CREATE TABLE Shop (
	shopSeq INTEGER NOT NULL, /* shopSeq */
	adType NVARCHAR2(1), /* adType */
	adStateCode NVARCHAR2(1), /* adStateCode */
	shopName NVARCHAR2(100), /* shopName */
	shopDomain NVARCHAR2(100), /* shopDomain */
	shopMobDomain NVARCHAR2(100), /* shopMobDomain */
	webUrl NVARCHAR2(500), /* webUrl */
	mobUrl NVARCHAR2(500), /* mobUrl */
	shopCateNames NVARCHAR2(200), /* shopCateNames */
	prodCateNames NVARCHAR2(200), /* prodCateNames */
	logoPath1 NVARCHAR2(200), /* logoPath1 */
	logoPath2 NVARCHAR2(200), /* logoPath2 */
	adLogoPath1 NVARCHAR2(200), /* adLogoPath1 */
	mobDetailPath NVARCHAR2(200), /* mobDetailPath */
	shopDescription NVARCHAR2(2000), /* shopDescription */
	adShopDescription NVARCHAR2(2000), /* adShopDescription */
	webNCount INTEGER, /* webNCount */
	mobNCount INTEGER, /* mobNCount */
	ranking INTEGER, /* ranking */
	prodCount INTEGER /* prodCount */
);

COMMENT ON TABLE Shop IS 'ShopList';

COMMENT ON COLUMN Shop.shopSeq IS 'shopSeq';

COMMENT ON COLUMN Shop.adType IS 'adType';

COMMENT ON COLUMN Shop.adStateCode IS 'adStateCode';

COMMENT ON COLUMN Shop.shopName IS 'shopName';

COMMENT ON COLUMN Shop.shopDomain IS 'shopDomain';

COMMENT ON COLUMN Shop.shopMobDomain IS 'shopMobDomain';

COMMENT ON COLUMN Shop.webUrl IS 'webUrl';

COMMENT ON COLUMN Shop.mobUrl IS 'mobUrl';

COMMENT ON COLUMN Shop.shopCateNames IS 'shopCateNames';

COMMENT ON COLUMN Shop.prodCateNames IS 'prodCateNames';

COMMENT ON COLUMN Shop.logoPath1 IS 'logoPath1';

COMMENT ON COLUMN Shop.logoPath2 IS 'logoPath2';

COMMENT ON COLUMN Shop.adLogoPath1 IS 'adLogoPath1';

COMMENT ON COLUMN Shop.mobDetailPath IS 'mobDetailPath';

COMMENT ON COLUMN Shop.shopDescription IS 'shopDescription';

COMMENT ON COLUMN Shop.adShopDescription IS 'adShopDescription';

COMMENT ON COLUMN Shop.webNCount IS 'webNCount';

COMMENT ON COLUMN Shop.mobNCount IS 'mobNCount';

COMMENT ON COLUMN Shop.ranking IS 'ranking';

COMMENT ON COLUMN Shop.prodCount IS 'prodCount';

CREATE UNIQUE INDEX PK_Shop
	ON Shop (
		shopSeq ASC
	);

ALTER TABLE Shop
	ADD
		CONSTRAINT PK_Shop
		PRIMARY KEY (
			shopSeq
		);

/* ProdCateList */
CREATE TABLE ProdCate (
	prodCateSeq INTEGER NOT NULL, /* prodCateSeq */
	parentCateSeq INTEGER, /* parentCateSeq */
	cateLevel INTEGER, /* cateLevel */
	cateName NVARCHAR2(200), /* cateName */
	catePath NVARCHAR2(1000) /* catePath */
);

COMMENT ON TABLE ProdCate IS 'ProdCateList';

COMMENT ON COLUMN ProdCate.prodCateSeq IS 'prodCateSeq';

COMMENT ON COLUMN ProdCate.parentCateSeq IS 'parentCateSeq';

COMMENT ON COLUMN ProdCate.cateLevel IS 'cateLevel';

COMMENT ON COLUMN ProdCate.cateName IS 'cateName';

COMMENT ON COLUMN ProdCate.catePath IS 'catePath';

CREATE UNIQUE INDEX PK_ProdCate
	ON ProdCate (
		prodCateSeq ASC
	);

ALTER TABLE ProdCate
	ADD
		CONSTRAINT PK_ProdCate
		PRIMARY KEY (
			prodCateSeq
		);

/* kindCodeList */
CREATE TABLE KindGubun (
	kindSeq INTEGER NOT NULL, /* kindSeq */
	kindName NVARCHAR2(200) /* kindName */
);

COMMENT ON TABLE KindGubun IS 'kindCodeList';

COMMENT ON COLUMN KindGubun.kindSeq IS 'kindSeq';

COMMENT ON COLUMN KindGubun.kindName IS 'kindName';

CREATE UNIQUE INDEX PK_KindGubun
	ON KindGubun (
		kindSeq ASC
	);

ALTER TABLE KindGubun
	ADD
		CONSTRAINT PK_KindGubun
		PRIMARY KEY (
			kindSeq
		);

/* ShopCateList */
CREATE TABLE ShopCate (
	cateSeq INT NOT NULL, /* cateSeq */
	divSeq INTEGER, /* divSeq */
	kindSeq INTEGER, /* kindSeq */
	cateName NVARCHAR2(200) /* cateName */
);

COMMENT ON TABLE ShopCate IS 'ShopCateList';

COMMENT ON COLUMN ShopCate.cateSeq IS 'cateSeq';

COMMENT ON COLUMN ShopCate.divSeq IS 'divSeq';

COMMENT ON COLUMN ShopCate.kindSeq IS 'kindSeq';

COMMENT ON COLUMN ShopCate.cateName IS 'cateName';

CREATE UNIQUE INDEX PK_ShopCate
	ON ShopCate (
		cateSeq ASC
	);

ALTER TABLE ShopCate
	ADD
		CONSTRAINT PK_ShopCate
		PRIMARY KEY (
			cateSeq
		);

/* divCodeList */
CREATE TABLE DivGubun (
	divSeq INTEGER NOT NULL, /* divSeq */
	divName NVARCHAR2(200) /* divName */
);

COMMENT ON TABLE DivGubun IS 'divCodeList';

COMMENT ON COLUMN DivGubun.divSeq IS 'divSeq';

COMMENT ON COLUMN DivGubun.divName IS 'divName';

CREATE UNIQUE INDEX PK_DivGubun
	ON DivGubun (
		divSeq ASC
	);

ALTER TABLE DivGubun
	ADD
		CONSTRAINT PK_DivGubun
		PRIMARY KEY (
			divSeq
		);


ALTER TABLE LatelyShop
	ADD
		CONSTRAINT FK_Shop_TO_LatelyShop
		FOREIGN KEY (
			shopSeq
		)
		REFERENCES Shop (
			shopSeq
		);

ALTER TABLE LatelyShop
	ADD
		CONSTRAINT FK_Member_TO_LatelyShop
		FOREIGN KEY (
			mNo
		)
		REFERENCES Member (
			mNo
		);

ALTER TABLE DownCoupon
	ADD
		CONSTRAINT FK_Coupon_TO_DownCoupon
		FOREIGN KEY (
			couponSeq
		)
		REFERENCES Coupon (
			couponSeq
		);

ALTER TABLE DownCoupon
	ADD
		CONSTRAINT FK_Member_TO_DownCoupon
		FOREIGN KEY (
			mNo
		)
		REFERENCES Member (
			mNo
		);

ALTER TABLE Coupon
	ADD
		CONSTRAINT FK_Shop_TO_Coupon
		FOREIGN KEY (
			shopSeq
		)
		REFERENCES Shop (
			shopSeq
		);

ALTER TABLE MExtInfo
	ADD
		CONSTRAINT FK_Member_TO_MExtInfo
		FOREIGN KEY (
			mNo
		)
		REFERENCES Member (
			mNo
		);

ALTER TABLE BuyOrder
	ADD
		CONSTRAINT FK_Product_TO_BuyOrder
		FOREIGN KEY (
			prodSeq
		)
		REFERENCES Product (
			prodSeq
		);

ALTER TABLE BuyOrder
	ADD
		CONSTRAINT FK_Member_TO_BuyOrder
		FOREIGN KEY (
			mNo
		)
		REFERENCES Member (
			mNo
		);

ALTER TABLE LatelyProd
	ADD
		CONSTRAINT FK_Product_TO_LatelyProd
		FOREIGN KEY (
			prodSeq
		)
		REFERENCES Product (
			prodSeq
		);

ALTER TABLE LatelyProd
	ADD
		CONSTRAINT FK_Member_TO_LatelyProd
		FOREIGN KEY (
			mNo
		)
		REFERENCES Member (
			mNo
		);

ALTER TABLE Product
	ADD
		CONSTRAINT FK_ProdCate_TO_Product
		FOREIGN KEY (
			prodCateSeq
		)
		REFERENCES ProdCate (
			prodCateSeq
		);

ALTER TABLE Product
	ADD
		CONSTRAINT FK_Shop_TO_Product
		FOREIGN KEY (
			shopSeq
		)
		REFERENCES Shop (
			shopSeq
		);

ALTER TABLE Product
	ADD
		CONSTRAINT FK_Coupon_TO_Product
		FOREIGN KEY (
			couponSeq
		)
		REFERENCES Coupon (
			couponSeq
		);

ALTER TABLE Product
	ADD
		CONSTRAINT FK_KindGubun_TO_Product
		FOREIGN KEY (
			kindSeq
		)
		REFERENCES KindGubun (
			kindSeq
		);

ALTER TABLE ShopCate
	ADD
		CONSTRAINT FK_DivGubun_TO_ShopCate
		FOREIGN KEY (
			divSeq
		)
		REFERENCES DivGubun (
			divSeq
		);

ALTER TABLE ShopCate
	ADD
		CONSTRAINT FK_KindGubun_TO_ShopCate
		FOREIGN KEY (
			kindSeq
		)
		REFERENCES KindGubun (
			kindSeq
		);