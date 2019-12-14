package recipe.model.vo;

import java.sql.Date;
import java.util.ArrayList;


public class Recipe {
	
	private String rId; //레시피Id
	private String rName; //레시피명
	private String mNo; //작성자
	private String cateInId; //재료별id
	private String cateFoId; //종류별id
	private String cateMethodId; //방법별id
	private Date rDate;	//작성일자
	private String rInfo; //요리소개
	private int rCount; //조회수
	private int rLike; //좋아요
	private int rCookTime; //소요시간
	private int rCookLevel; //난이도
	private ArrayList<Step> Step; //요리순서
	private ArrayList<Ingredient> Ingredient; //재료
	private String rInName; //재료명
	private String rWeight; //용량
	private String sId; //요리순서번호
	private int sStep; //요리순서
	private String sDesc; //순서별 요리설명
	private String status; //상태

	
	
	
	





	
	
	
	

	







	public Recipe(String rId, String rName, String mNo, String rInfo, int rCount, int rCookTime, int rCookLevel, String rInName,
			String rWeight, int sStep, String sDesc) {
		super();
		this.rId=rId;
		this.rName = rName;
		this.mNo = mNo;
		this.rInfo = rInfo;
		this.rCount = rCount;
		this.rCookTime = rCookTime;
		this.rCookLevel = rCookLevel;
		this.rInName = rInName;
		this.rWeight = rWeight;
		this.sStep = sStep;
		this.sDesc = sDesc;
	}

	public Recipe(String rId, String rName, String mNo, String cateInId, String cateFoId, String cateMethodId,
			Date rDate, String rInfo, int rCount, int rLike, int rCookTime, int rCookLevel,
			ArrayList<recipe.model.vo.Step> step, ArrayList<recipe.model.vo.Ingredient> ingredient, int fId,
			int fileLevel, String rInName, String rWeight, String sId, int sStep, String sDesc, String status) {
		super();
		this.rId = rId;
		this.rName = rName;
		this.mNo = mNo;
		this.cateInId = cateInId;
		this.cateFoId = cateFoId;
		this.cateMethodId = cateMethodId;
		this.rDate = rDate;
		this.rInfo = rInfo;
		this.rCount = rCount;
		this.rLike = rLike;
		this.rCookTime = rCookTime;
		this.rCookLevel = rCookLevel;
		Step = step;
		Ingredient = ingredient;
		this.rInName = rInName;
		this.rWeight = rWeight;
		this.sId = sId;
		this.sStep = sStep;
		this.sDesc = sDesc;
		this.status = status;
	}







	public String getrId() {
		return rId;
	}









	public void setrId(String rId) {
		this.rId = rId;
	}









	public String getrName() {
		return rName;
	}









	public void setrName(String rName) {
		this.rName = rName;
	}









	public String getmNo() {
		return mNo;
	}









	public void setmNo(String mNo) {
		this.mNo = mNo;
	}









	public String getCateInId() {
		return cateInId;
	}









	public void setCateInId(String cateInId) {
		this.cateInId = cateInId;
	}









	public String getCateFoId() {
		return cateFoId;
	}









	public void setCateFoId(String cateFoId) {
		this.cateFoId = cateFoId;
	}









	public String getCateMethodId() {
		return cateMethodId;
	}









	public void setCateMethodId(String cateMethodId) {
		this.cateMethodId = cateMethodId;
	}









	public Date getrDate() {
		return rDate;
	}









	public void setrDate(Date rDate) {
		this.rDate = rDate;
	}









	public String getrInfo() {
		return rInfo;
	}









	public void setrInfo(String rInfo) {
		this.rInfo = rInfo;
	}









	public int getrCount() {
		return rCount;
	}









	public void setrCount(int rCount) {
		this.rCount = rCount;
	}









	public int getrLike() {
		return rLike;
	}









	public void setrLike(int rLike) {
		this.rLike = rLike;
	}









	public int getrCookTime() {
		return rCookTime;
	}









	public void setrCookTime(int rCookTime) {
		this.rCookTime = rCookTime;
	}









	public int getrCookLevel() {
		return rCookLevel;
	}









	public void setrCookLevel(int rCookLevel) {
		this.rCookLevel = rCookLevel;
	}









	public ArrayList<Step> getStep() {
		return Step;
	}









	public void setStep(ArrayList<Step> step) {
		Step = step;
	}









	public ArrayList<Ingredient> getIngredient() {
		return Ingredient;
	}









	public void setIngredient(ArrayList<Ingredient> ingredient) {
		Ingredient = ingredient;
	}





	public String getrInName() {
		return rInName;
	}









	public void setrInName(String rInName) {
		this.rInName = rInName;
	}









	public String getrWeight() {
		return rWeight;
	}









	public void setrWeight(String rWeight) {
		this.rWeight = rWeight;
	}









	public String getsId() {
		return sId;
	}









	public void setsId(String sId) {
		this.sId = sId;
	}









	public int getsStep() {
		return sStep;
	}









	public void setsStep(int sStep) {
		this.sStep = sStep;
	}









	public String getsDesc() {
		return sDesc;
	}









	public void setsDesc(String sDesc) {
		this.sDesc = sDesc;
	}









	public String getStatus() {
		return status;
	}









	public void setStatus(String status) {
		this.status = status;
	}









	@Override
	public String toString() {
		return "Recipe [rId=" + rId + ", rName=" + rName + ", mNo=" + mNo + ", cateInId=" + cateInId + ", cateFoId="
				+ cateFoId + ", cateMethodId=" + cateMethodId + ", rDate=" + rDate + ", rInfo=" + rInfo + ", rCount="
				+ rCount + ", rLike=" + rLike + ", rCookTime=" + rCookTime + ", rCookLevel=" + rCookLevel + ", Step="
				+ Step + ", Ingredient=" + Ingredient  + ", rInName="
				+ rInName + ", rWeight=" + rWeight + ", sId=" + sId + ", sStep=" + sStep + ", sDesc=" + sDesc
				+ ", status=" + status + "]";
	}




}