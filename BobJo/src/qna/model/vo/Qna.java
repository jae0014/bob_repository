package qna.model.vo;

import java.sql.Date;

public class Qna {
	private String qId;
	private String qTitle;
	private String qContent;
	private String mId;
	private String orderId;
	private Date qDate;
	private String qCate;
	private String aStatus;
	private String aContent;
	private Date aDate;
	
	public Qna() {}

	public Qna(String qId, String qTitle, String qContent, String mId, String orderId, Date qDate, String qCate,
			String aStatus, String aContent, Date aDate) {
		super();
		this.qId = qId;
		this.qTitle = qTitle;
		this.qContent = qContent;
		this.mId = mId;
		this.orderId = orderId;
		this.qDate = qDate;
		this.qCate = qCate;
		this.aStatus = aStatus;
		this.aContent = aContent;
		this.aDate = aDate;
	}

	
	
	public Qna(String qId, String qTitle, String mId, Date qDate, String qCate, String aStatus) {
		super();
		this.qId = qId;
		this.qTitle = qTitle;
		this.mId = mId;
		this.qDate = qDate;
		this.qCate = qCate;
		this.aStatus = aStatus;
	}

	public String getqId() {
		return qId;
	}

	public void setqId(String qId) {
		this.qId = qId;
	}

	public String getqTitle() {
		return qTitle;
	}

	public void setqTitle(String qTitle) {
		this.qTitle = qTitle;
	}

	public String getqContent() {
		return qContent;
	}

	public void setqContent(String qContent) {
		this.qContent = qContent;
	}

	public String getmId() {
		return mId;
	}

	public void setmId(String mId) {
		this.mId = mId;
	}

	public String getOrderId() {
		return orderId;
	}

	public void setOrderId(String orderId) {
		this.orderId = orderId;
	}

	public Date getqDate() {
		return qDate;
	}

	public void setqDate(Date qDate) {
		this.qDate = qDate;
	}

	public String getqCate() {
		return qCate;
	}

	public void setqCate(String qCate) {
		this.qCate = qCate;
	}

	public String getaStatus() {
		return aStatus;
	}

	public void setaStatus(String aStatus) {
		this.aStatus = aStatus;
	}

	public String getaContent() {
		return aContent;
	}

	public void setaContent(String aContent) {
		this.aContent = aContent;
	}

	public Date getaDate() {
		return aDate;
	}

	public void setaDate(Date aDate) {
		this.aDate = aDate;
	}

	@Override
	public String toString() {
		return "Qna [qId=" + qId + ", qTitle=" + qTitle + ", qContent=" + qContent + ", mId=" + mId + ", orderId="
				+ orderId + ", qDate=" + qDate + ", qCate=" + qCate + ", aStatus=" + aStatus + ", aContent=" + aContent
				+ ", aDate=" + aDate + "]";
	}

	
	
	
}
