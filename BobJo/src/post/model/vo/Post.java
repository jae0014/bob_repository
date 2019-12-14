package post.model.vo;

public class Post {
	private String pId;
	private int pType;
	private String pTitle;
	private String pCotent;
	private String pWriter;
	private String pDateWritten;
	private String pCount;
	private String pLike;
	private String pStatus;
	
	public Post() {}
	public Post(String pId, int pType, String pTitle, String pCotent, String pWriter, String pDateWritten,
			String pCount, String pLike, String pStatus) {
		super();
		this.pId = pId;
		this.pType = pType;
		this.pTitle = pTitle;
		this.pCotent = pCotent;
		this.pWriter = pWriter;
		this.pDateWritten = pDateWritten;
		this.pCount = pCount;
		this.pLike = pLike;
		this.pStatus = pStatus;
	}
	public String getpId() {
		return pId;
	}
	public void setpId(String pId) {
		this.pId = pId;
	}
	public int getpType() {
		return pType;
	}
	public void setpType(int pType) {
		this.pType = pType;
	}
	public String getpTitle() {
		return pTitle;
	}
	public void setpTitle(String pTitle) {
		this.pTitle = pTitle;
	}
	public String getpCotent() {
		return pCotent;
	}
	public void setpCotent(String pCotent) {
		this.pCotent = pCotent;
	}
	public String getpWriter() {
		return pWriter;
	}
	public void setpWriter(String pWriter) {
		this.pWriter = pWriter;
	}
	public String getpDateWritten() {
		return pDateWritten;
	}
	public void setpDateWritten(String pDateWritten) {
		this.pDateWritten = pDateWritten;
	}
	public String getpCount() {
		return pCount;
	}
	public void setpCount(String pCount) {
		this.pCount = pCount;
	}
	public String getpLike() {
		return pLike;
	}
	public void setpLike(String pLike) {
		this.pLike = pLike;
	}
	public String getpStatus() {
		return pStatus;
	}
	public void setpStatus(String pStatus) {
		this.pStatus = pStatus;
	}
	@Override
	public String toString() {
		return "Post [pId=" + pId + ", pType=" + pType + ", pTitle=" + pTitle + ", pCotent=" + pCotent + ", pWriter="
				+ pWriter + ", pDateWritten=" + pDateWritten + ", pCount=" + pCount + ", pLike=" + pLike + ", pStatus="
				+ pStatus + "]";
	}
	
	
	
}
