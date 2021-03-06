package Movie.DTO;

import java.sql.Date;

public class MovieInfo {
	
	private int mCode;
	private String mName;
	private String mPoster;
	private String mGenre;
	private String mDirector;
	private String mTime;
	private String mActor;
	private int sCode;
	/*private java.sql.Date mPlayDate;*/
	private String mPlayDate;
	
	public MovieInfo(){}
	public MovieInfo(String mName, String mPoster, String mGenre,
			String mDirector, String mTime, String mActor, int sCode,
			Date mPlayDate) {
		super();
	
		this.mName = mName;
		this.mPoster = mPoster;
		this.mGenre = mGenre;
		this.mDirector = mDirector;
		this.mTime = mTime;
		this.mActor = mActor;
		this.sCode = sCode;
	/*	this.mPlayDate = mPlayDate;*/
	}
	
	
	
	public MovieInfo(int mCode, String mName, String mPoster, String mGenre,
			String mDirector, String mTime, String mActor, int sCode,
			Date mPlayDate) {
		super();
		this.mCode = mCode;
		this.mName = mName;
		this.mPoster = mPoster;
		this.mGenre = mGenre;
		this.mDirector = mDirector;
		this.mTime = mTime;
		this.mActor = mActor;
		this.sCode = sCode;
	/*	this.mPlayDate = mPlayDate;*/
	}

	


	public int getmCode() {
		return mCode;
	}




	public void setmCode(int mCode) {
		this.mCode = mCode;
	}




	public String getmName() {
		return mName;
	}




	public void setmName(String mName) {
		this.mName = mName;
	}




	public String getmPoster() {
		return mPoster;
	}




	public void setmPoster(String mPoster) {
		this.mPoster = mPoster;
	}




	public String getmGenre() {
		return mGenre;
	}




	public void setmGenre(String mGenre) {
		this.mGenre = mGenre;
	}




	public String getmDirector() {
		return mDirector;
	}




	public void setmDirector(String mDirector) {
		this.mDirector = mDirector;
	}




	public String getmTime() {
		return mTime;
	}




	public void setmTime(String mTime) {
		this.mTime = mTime;
	}




	public String getmActor() {
		return mActor;
	}




	public void setmActor(String mActor) {
		this.mActor = mActor;
	}




	public int getsCode() {
		return sCode;
	}




	public void setsCode(int sCode) {
		this.sCode = sCode;
	}
	public String getmPlayDate() {
		return mPlayDate;
	}
	public void setmPlayDate(String mPlayDate) {
		this.mPlayDate = mPlayDate;
	}

	


/*
	public java.sql.Date getmPlayDate() {
		return mPlayDate;
	}




	public void setmPlayDate(java.sql.Date mPlayDate) {
		this.mPlayDate = mPlayDate;
	}

	public String toString(){
		return mCode + " : " + mName + " : " + mPoster + " : " + mGenre + " : " + mDirector + " : " + mTime + " : " + mActor + " : " + sCode + " : " + mPlayDate;
	}*/
	

}
