package Shopping;

public class Product {
	private int prodSeq;
	private int shopSeq;
	private int prodCateSeq;
	private String newYn;
	private String imgPath;
	private String detailImgPath;
	private int price;
	private int dcPrice;
	private int bestOrder;
	private String stickerPath;
	private int kindSeq;
	private int couponSeq;
	
	public Product(){}
	
	public int getProdSeq() {
		return prodSeq;
	}

	public void setProdSeq(int prodSeq) {
		this.prodSeq = prodSeq;
	}

	public int getShopSeq() {
		return shopSeq;
	}

	public void setShopSeq(int shopSeq) {
		this.shopSeq = shopSeq;
	}

	public int getProdCateSeq() {
		return prodCateSeq;
	}

	public void setProdCateSeq(int prodCateSeq) {
		this.prodCateSeq = prodCateSeq;
	}

	public String getNewYn() {
		return newYn;
	}

	public void setNewYn(String newYn) {
		this.newYn = newYn;
	}

	public String getImgPath() {
		return imgPath;
	}

	public void setImgPath(String imgPath) {
		this.imgPath = imgPath;
	}

	public String getDetailImgPath() {
		return detailImgPath;
	}

	public void setDetailImgPath(String detailImgPath) {
		this.detailImgPath = detailImgPath;
	}

	public int getPrice() {
		return price;
	}

	public void setPrice(int price) {
		this.price = price;
	}

	public int getDcPrice() {
		return dcPrice;
	}

	public void setDcPrice(int dcPrice) {
		this.dcPrice = dcPrice;
	}

	public int getBestOrder() {
		return bestOrder;
	}

	public void setBestOrder(int bestOrder) {
		this.bestOrder = bestOrder;
	}

	public String getStickerPath() {
		return stickerPath;
	}

	public void setStickerPath(String stickerPath) {
		this.stickerPath = stickerPath;
	}

	public int getKindSeq() {
		return kindSeq;
	}

	public void setKindSeq(int kindSeq) {
		this.kindSeq = kindSeq;
	}

	public int getCouponSeq() {
		return couponSeq;
	}

	public void setCouponSeq(int couponSeq) {
		this.couponSeq = couponSeq;
	}

	public Product(int prodSeq, int shopSeq, int prodCateSeq, String newYn,
			String imgPath, String detailImgPath, int price, int dcPrice,
			int bestOrder, String stickerPath, int kindSeq, int couponSeq) {
		this.prodSeq = prodSeq;
		this.shopSeq = shopSeq;
		this.prodCateSeq = prodCateSeq;
		this.newYn = newYn;
		this.imgPath = imgPath;
		this.detailImgPath = detailImgPath;
		this.price = price;
		this.dcPrice = dcPrice;
		this.bestOrder = bestOrder;
		this.stickerPath = stickerPath;
		this.kindSeq = kindSeq;
		this.couponSeq = couponSeq;
	}

	public String toString(){
		return prodSeq+":"+shopSeq+":"+prodCateSeq+":"+newYn+":"+imgPath+":"+detailImgPath+":"+price+":"+dcPrice+":"+bestOrder+":"+stickerPath+":"+kindSeq+":"+couponSeq;
	}
}
