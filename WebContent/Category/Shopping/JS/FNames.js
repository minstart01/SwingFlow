/**
 *  Common, Shopping 필드이름 FNames.Shopping   
 */
var FNames = {}
FNames.Shopping = {}
FNames.Shopping.Shop = [ 'shopSeq', 'adType', 'adStateCode',
		'shopName', 'shopDomain', 'shopMobDomain', 'webUrl', 'mobUrl',
		'shopCateNames', 'prodCateNames', 'logoPath1', 'logoPath2',
		'adLogoPath1', 'adLogoPath2', 'mobDetailPath', 'shopDescription',
		'adShopDescription', 'webNCount', 'mobNCount', 'ranking', 'prodCount', ]
FNames.Shopping.Shop.Exclude = [0]

FNames.Shopping.Coupon = [ 'couponSeq', 'shopSeq', 'couponName', 'expiryYn',
		'expryDate', 'useCondition', 'dcType', 'dcValue', 'totalCount',
		'downCount', 'cpnWebBnrPath', 'cpnMobBnrPath', 'cpnMobDtlPath' ]
FNames.Shopping.Coupon

FNames.Shopping.DownCoupon = [ 'downCouponSeq', 'mNo', 'couponSeq',
		'couponCode', 'downDate' ]
FNames.Shopping.DownCoupon

FNames.Shopping.LatelyShop = [ 'latelyShopSeq', 'mNo', 'shopSeq', 'count' ]

FNames.Shopping.DivGubun = [ 'divSeq', 'divName' ]

FNames.Shopping.ShopCate = [ 'cateSeq', 'divSeq', 'kindSeq', 'cateName' ]

FNames.Shopping.KindGubun = [ 'kindSeq', 'kindName' ]

FNames.Shopping.Product = [ 'prodSeq', 'shopSeq', 'prodCateSeq', 'newYn',
		'imgPath', 'detailImgPath', 'price', 'dcPrice', 'bestOrder',
		'stickerPath', 'kindSeq', 'couponSeq' ]

FNames.Shopping.BuyOrder = [ 'buyOrderSeq', 'mNo', 'buyDate', 'point',
		'prodSeq' ]

FNames.Shopping.LatelyProd = [ 'latelyProdSeq', 'mNo', 'prodSeq', 'count' ]

FNames.Shopping.ProdCate = [ 'prodCateSeq', 'parentCateSeq', 'cateLevel',
		'cateName', 'catePath' ]

FNames.Shopping.MExtInfo = [ 'mNo', 'mileage' ]

FNames.Common = {}

FNames.Common.Member = [ 'mNo', 'mId', 'mPwd', 'mName', 'sCode', 'mBirth',
		'bCode', 'aCode', 'mDetailAddr', 'mEmail', 'eCode', 'mPhone', 'pCode',
		'mProduct', 'mCode', 'mJoinDate', 'mProductNo' ]

FNames.Common.Birth = [ 'bCode', 'bBirth' ]

FNames.Common.Sex = [ 'sCode', 'sSex' ]

FNames.Common.ReceiveEMAIL = [ 'eCode', 'eReceive' ]

FNames.Common.MemberShip = [ 'mCode', 'mGrade' ]

FNames.Common.Address = [ 'aCode', 'zipcode', 'sido', 'gugun', 'dong', 'ri',
		'bunji' ]

FNames.Common.ReceiveSMS = [ 'pCode', 'pReceive' ]

FNames.getForms = function(namespace,tableName) {
	var search = FNames[namespace]
	var ret = {} 
	$.each(search[tableName],function(cnt,dataName){
		ret[dataName]=$("#"+dataName).val()
	})
	return ret;
}
