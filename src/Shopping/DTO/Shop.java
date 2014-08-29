package Shopping.DTO;

public class Shop {
	private int shopSeq;
	private String adType;
	private String adStateCode;
	private String shopName;
	private String shopDomain;
	private String shopMobDomain;
	private String webUrl;
	private String mobUrl;
	private String shopCateNames;
	private String prodCateNames;
	private String logoPath1;
	private String logoPath2;
	private String adLogoPath1;
	private String adLogoPath2;
	private String mobDetailPath;
	private String shopDescription;
	private String adShopDescription;
	private int webNCount;
	private int mobNCount;
	private int ranking;
	private int prodCount;
	public Shop(){}
	public Shop(int shopSeq, String adType, String adStateCode,
			String shopName, String shopDomain, String shopMobDomain,
			String webUrl, String mobUrl, String shopCateNames,
			String prodCateNames, String logoPath1, String logoPath2,
			String adLogoPath1,String adLogoPath2, String mobDetailPath, String shopDescription,
			String adShopDescription, int webNCount, int mobNCount,
			int ranking, int prodCount) {
		this.shopSeq = shopSeq;
		this.adType = adType;
		this.adStateCode = adStateCode;
		this.shopName = shopName;
		this.shopDomain = shopDomain;
		this.shopMobDomain = shopMobDomain;
		this.webUrl = webUrl;
		this.mobUrl = mobUrl;
		this.shopCateNames = shopCateNames;
		this.prodCateNames = prodCateNames;
		this.logoPath1 = logoPath1;
		this.logoPath2 = logoPath2;
		this.adLogoPath1 = adLogoPath1;
		this.adLogoPath2 = adLogoPath2;
		this.mobDetailPath = mobDetailPath;
		this.shopDescription = shopDescription;
		this.adShopDescription = adShopDescription;
		this.webNCount = webNCount;
		this.mobNCount = mobNCount;
		this.ranking = ranking;
		this.prodCount = prodCount;
	}
	public int getShopSeq() {
		return shopSeq;
	}
	public void setShopSeq(int shopSeq) {
		this.shopSeq = shopSeq;
	}
	public String getAdType() {
		return adType;
	}
	public void setAdType(String adType) {
		this.adType = adType;
	}
	public String getAdStateCode() {
		return adStateCode;
	}
	public void setAdStateCode(String adStateCode) {
		this.adStateCode = adStateCode;
	}
	public String getShopName() {
		return shopName;
	}
	public void setShopName(String shopName) {
		this.shopName = shopName;
	}
	public String getShopDomain() {
		return shopDomain;
	}
	public void setShopDomain(String shopDomain) {
		this.shopDomain = shopDomain;
	}
	public String getShopMobDomain() {
		return shopMobDomain;
	}
	public void setShopMobDomain(String shopMobDomain) {
		this.shopMobDomain = shopMobDomain;
	}
	public String getWebUrl() {
		return webUrl;
	}
	public void setWebUrl(String webUrl) {
		this.webUrl = webUrl;
	}
	public String getMobUrl() {
		return mobUrl;
	}
	public void setMobUrl(String mobUrl) {
		this.mobUrl = mobUrl;
	}
	public String getShopCateNames() {
		return shopCateNames;
	}
	public void setShopCateNames(String shopCateNames) {
		this.shopCateNames = shopCateNames;
	}
	public String getProdCateNames() {
		return prodCateNames;
	}
	public void setProdCateNames(String prodCateNames) {
		this.prodCateNames = prodCateNames;
	}
	public String getLogoPath1() {
		return logoPath1;
	}
	public void setLogoPath1(String logoPath1) {
		this.logoPath1 = logoPath1;
	}
	public String getLogoPath2() {
		return logoPath2;
	}
	public void setLogoPath2(String logoPath2) {
		this.logoPath2 = logoPath2;
	}
	public String getAdLogoPath1() {
		return adLogoPath1;
	}
	public void setAdLogoPath1(String adLogoPath1) {
		this.adLogoPath1 = adLogoPath1;
	}
	public String getAdLogoPath2() {
		return adLogoPath2;
	}
	public void setAdLogoPath2(String adLogoPath2) {
		this.adLogoPath2 = adLogoPath2;
	}
	public String getMobDetailPath() {
		return mobDetailPath;
	}
	public void setMobDetailPath(String mobDetailPath) {
		this.mobDetailPath = mobDetailPath;
	}
	public String getShopDescription() {
		return shopDescription;
	}
	public void setShopDescription(String shopDescription) {
		this.shopDescription = shopDescription;
	}
	public String getAdShopDescription() {
		return adShopDescription;
	}
	public void setAdShopDescription(String adShopDescription) {
		this.adShopDescription = adShopDescription;
	}
	public int getWebNCount() {
		return webNCount;
	}
	public void setWebNCount(int webNCount) {
		this.webNCount = webNCount;
	}
	public int getMobNCount() {
		return mobNCount;
	}
	public void setMobNCount(int mobNCount) {
		this.mobNCount = mobNCount;
	}
	public int getRanking() {
		return ranking;
	}
	public void setRanking(int ranking) {
		this.ranking = ranking;
	}
	public int getProdCount() {
		return prodCount;
	}
	public void setProdCount(int prodCount) {
		this.prodCount = prodCount;
	}
	public String toString(){
		return shopSeq+":"+adType+":"+adStateCode+":"+shopName+":"+shopDomain+":"+shopMobDomain
				+":"+webUrl+":"+mobUrl+":"+shopCateNames+":"+prodCateNames+":"+logoPath1+":"
				+":"+logoPath2+":"+adLogoPath1+":"+adLogoPath2+":"+mobDetailPath+":"+shopDescription+":"+adShopDescription+":"
				+":"+webNCount+":"+mobNCount+":"+ranking+":"+prodCount;
	}
}
