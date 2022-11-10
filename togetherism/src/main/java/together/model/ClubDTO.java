package together.model;

import java.util.Date;
import lombok.Data;

@Data
public class ClubDTO {
	   
	   private int club_num;
	   private String club_host_email;
	   private String club_name;
	   private String club_image;
	   private String club_region;
	   private String club_keyword;
	   private String club_info;
	   private int club_member_count;
	   private int club_member_limit;
	   private String club_interest;
	   private String club_chat;
	   private Date club_reg_date;
	   private String club_del_yn;
	   private Date club_del_date;
	   private int club_viewcount;
	   
}
