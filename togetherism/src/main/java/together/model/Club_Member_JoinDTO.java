package together.model;

import java.util.Date;

import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
public class Club_Member_JoinDTO {
	int join_num;
	String member_email;
	int club_num;
	String member_nickname;
	String member_image;
	String join_hello;
	String club_host_yn;
	Date join_date;
}
