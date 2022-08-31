package board;

public class Board {
	private int board_num;
	private String board_title;
	private String board_content;
	private String board_reply;
	private String board_regdate;
	private int board_views;
	private String board_pw;
	private char board_reply_yn;
	private String board_member_id;
	
	public int getBoard_num() {
		return board_num;
	}
	public void setBoard_num(int board_num) {
		this.board_num = board_num;
	}
	public String getBoard_title() {
		return board_title;
	}
	public void setBoard_title(String board_title) {
		this.board_title = board_title;
	}
	public String getBoard_content() {
		return board_content;
	}
	public void setBoard_content(String board_content) {
		this.board_content = board_content;
	}
	public String getBoard_reply() {
		return board_reply;
	}
	public void setBoard_reply(String board_reply) {
		this.board_reply = board_reply;
	}
	public String getBoard_regdate() {
		return board_regdate;
	}
	public void setBoard_regdate(String board_regdate) {
		this.board_regdate = board_regdate;
	}
	public int getBoard_views() {
		return board_views;
	}
	public void setBoard_views(int board_views) {
		this.board_views = board_views;
	}
	public String getBoard_pw() {
		return board_pw;
	}
	public void setBoard_pw(String board_pw) {
		this.board_pw = board_pw;
	}
	public char getBoard_reply_yn() {
		return board_reply_yn;
	}
	public void setBoard_reply_yn(char board_reply_yn) {
		this.board_reply_yn = board_reply_yn;
	}
	public String getBoard_member_id() {
		return board_member_id;
	}
	public void setBoard_member_id(String board_member_id) {
		this.board_member_id = board_member_id;
	}
}
