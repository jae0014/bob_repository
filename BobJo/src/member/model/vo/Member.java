package member.model.vo;

import java.util.Date;

public class Member {
	
	private String mNo;
	private String mId;
	private String mPwd;
	private String mName;
	private Date mEntDate;
	private String email;
	private String phone;
	private String addr;
	private String gender;
	private String nickName;
	private Date birth;
	private String mGrade;
	private Date mOutDate;
	private String mStatus;
	public String getmNo() {
		return mNo;
	}


	public void setmNo(String mNo) {
		this.mNo = mNo;
	}


	public String getmId() {
		return mId;
	}


	public void setmId(String mId) {
		this.mId = mId;
	}


	public String getmPwd() {
		return mPwd;
	}


	public void setmPwd(String mPwd) {
		this.mPwd = mPwd;
	}


	public String getmName() {
		return mName;
	}


	public void setmName(String mName) {
		this.mName = mName;
	}


	public Date getmEntDate() {
		return mEntDate;
	}


	public void setmEntDate(Date mEntDate) {
		this.mEntDate = mEntDate;
	}


	public String getEmail() {
		return email;
	}


	public void setEmail(String email) {
		this.email = email;
	}


	public String getPhone() {
		return phone;
	}


	public void setPhone(String phone) {
		this.phone = phone;
	}


	public String getAddr() {
		return addr;
	}


	public void setAddr(String addr) {
		this.addr = addr;
	}


	public String getGender() {
		return gender;
	}


	public void setGender(String gender) {
		this.gender = gender;
	}


	public String getNickName() {
		return nickName;
	}


	public void setNickName(String nickName) {
		this.nickName = nickName;
	}


	public Date getBirth() {
		return birth;
	}


	public void setBirth(Date birth) {
		this.birth = birth;
	}


	public String getmGrade() {
		return mGrade;
	}


	public void setmGrade(String mGrade) {
		this.mGrade = mGrade;
	}


	public Date getmOutDate() {
		return mOutDate;
	}


	public void setmOutDate(Date mOutDate) {
		this.mOutDate = mOutDate;
	}


	public String getmStatus() {
		return mStatus;
	}


	public void setmStatus(String mStatus) {
		this.mStatus = mStatus;
	}


	public String getmIntro() {
		return mIntro;
	}


	public void setmIntro(String mIntro) {
		this.mIntro = mIntro;
	}


	private String mIntro;
	
	
	public Member() {}


	public Member(String mNo, String mId, String mPwd, String mName, Date mEntDate, String email, String phone,
			String addr, String gender, String nickName, Date birth, String mGrade, Date mOutDate, String mStatus,
			String mIntro) {
		super();
		this.mNo = mNo;
		this.mId = mId;
		this.mPwd = mPwd;
		this.mName = mName;
		this.mEntDate = mEntDate;
		this.email = email;
		this.phone = phone;
		this.addr = addr;
		this.gender = gender;
		this.nickName = nickName;
		this.birth = birth;
		this.mGrade = mGrade;
		this.mOutDate = mOutDate;
		this.mStatus = mStatus;
		this.mIntro = mIntro;
	}


	public Member(String nickName, String mIntro) {
		super();
		this.nickName = nickName;
		this.mIntro = mIntro;
	}


	@Override
	public String toString() {
		return "Member [mNo=" + mNo + ", mId=" + mId + ", mPwd=" + mPwd + ", mName=" + mName + ", mEntDate=" + mEntDate
				+ ", email=" + email + ", phone=" + phone + ", addr=" + addr + ", gender=" + gender + ", nickName="
				+ nickName + ", birth=" + birth + ", mGrade=" + mGrade + ", mOutDate=" + mOutDate + ", mStatus="
				+ mStatus + ", mIntro=" + mIntro + "]";
	}
	
	
	


}
