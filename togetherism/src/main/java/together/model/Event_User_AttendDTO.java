package together.model;

import lombok.Getter;
import lombok.Setter;


@Setter
@Getter
public class Event_User_AttendDTO {
	
	private int attend_num;
	private int event_num;
	private String member_email;
}
