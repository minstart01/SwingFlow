package Shopping;

public class ProdCate {
	private int prodCateSeq;
	private int parentCateSeq;
	private int cateLevel;
	private String cateName;
	private String catePath;
	public ProdCate(){}
	public ProdCate(int prodCateSeq, int parentCateSeq, int cateLevel,
			String cateName, String catePath) {
		this.prodCateSeq = prodCateSeq;
		this.parentCateSeq = parentCateSeq;
		this.cateLevel = cateLevel;
		this.cateName = cateName;
		this.catePath = catePath;
	}
	public int getProdCateSeq() {
		return prodCateSeq;
	}
	public void setProdCateSeq(int prodCateSeq) {
		this.prodCateSeq = prodCateSeq;
	}
	public int getParentCateSeq() {
		return parentCateSeq;
	}
	public void setParentCateSeq(int parentCateSeq) {
		this.parentCateSeq = parentCateSeq;
	}
	public int getCateLevel() {
		return cateLevel;
	}
	public void setCateLevel(int cateLevel) {
		this.cateLevel = cateLevel;
	}
	public String getCateName() {
		return cateName;
	}
	public void setCateName(String cateName) {
		this.cateName = cateName;
	}
	public String getCatePath() {
		return catePath;
	}
	public void setCatePath(String catePath) {
		this.catePath = catePath;
	}
	public String toString(){
		return prodCateSeq+":"+parentCateSeq+":"+cateLevel+":"+cateName+":"+catePath;
	}
}
