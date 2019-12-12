package file.model.vo;

public class File {
	private String fId; 		// 파일 고유번호
	private int btype; 		// 1.일반/2.상품/3.레시피/4.댓글/5.프로필/6.1:1문의내역
	private String bprcId;	// 구분값에따른 게시판번호(FK)
	private int fLevel;		// 썸네일:1/일반:2
	private String fStatus;	// 파일삭제여부
	private String fPath;	// 파일경로
	
	
	public File() {}


	public File(String fId, int btype, String bprcId, int fLevel, String fStatus, String fPath) {
		super();
		this.fId = fId;
		this.btype = btype;
		this.bprcId = bprcId;
		this.fLevel = fLevel;
		this.fStatus = fStatus;
		this.fPath = fPath;
	}


	public String getfId() {
		return fId;
	}


	public void setfId(String fId) {
		this.fId = fId;
	}


	public int getBtype() {
		return btype;
	}


	public void setBtype(int btype) {
		this.btype = btype;
	}


	public String getBprcId() {
		return bprcId;
	}


	public void setBprcId(String bprcId) {
		this.bprcId = bprcId;
	}


	public int getfLevel() {
		return fLevel;
	}


	public void setfLevel(int fLevel) {
		this.fLevel = fLevel;
	}


	public String getfStatus() {
		return fStatus;
	}


	public void setfStatus(String fStatus) {
		this.fStatus = fStatus;
	}


	public String getfPath() {
		return fPath;
	}


	public void setfPath(String fPath) {
		this.fPath = fPath;
	}


	@Override
	public String toString() {
		return "File [fId=" + fId + ", btype=" + btype + ", bprcId=" + bprcId + ", fLevel=" + fLevel + ", fStatus="
				+ fStatus + ", fPath=" + fPath + "]";
	};
	
	
	
}