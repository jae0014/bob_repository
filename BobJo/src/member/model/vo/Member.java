package member.model.vo;

import java.sql.Date;

public class Member {
	private String mNo;
	private String mId;
	private String mPwd;
	private String mNmae;
	private Date mEntDate;
	private String email;
	private String phone;
	private String addr;
	private String gender;
	private String nickname;
	private String birth;
	private String mGrade;
	private Date mOutDate;
	private String mStatus;
	
	public Member() {}

	public Member(String mNo, String mId, String mPwd, String mNmae, Date mEntDate, String email, String phone,
			String addr, String gender, String nickname, String birth, String mGrade, Date mOutDate, String mStatus) {
		super();
		this.mNo = mNo;
		this.mId = mId;
		this.mPwd = mPwd;
		this.mNmae = mNmae;
		this.mEntDate = mEntDate;
		this.email = email;
		this.phone = phone;
		this.addr = addr;
		this.gender = gender;
		this.nickname = nickname;
		this.birth = birth;
		this.mGrade = mGrade;
		this.mOutDate = mOutDate;
		this.mStatus = mStatus;
	}

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

	public String getmNmae() {
		return mNmae;
	}

	public void setmNmae(String mNmae) {
		this.mNmae = mNmae;
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

	public String getNickname() {
		return nickname;
	}

	public void setNickname(String nickname) {
		this.nickname = nickname;
	}

	public String getBirth() {
		return birth;
	}

	public void setBirth(String birth) {
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

	@Override
	public String toString() {
		return "Member [mNo=" + mNo + ", mId=" + mId + ", mPwd=" + mPwd + ", mNmae=" + mNmae + ", mEntDate=" + mEntDate
				+ ", email=" + email + ", phone=" + phone + ", addr=" + addr + ", gender=" + gender + ", nickname="
				+ nickname + ", birth=" + birth + ", mGrade=" + mGrade + ", mOutDate=" + mOutDate + ", mStatus="
				+ mStatus + "]";
	};
	
	
}
