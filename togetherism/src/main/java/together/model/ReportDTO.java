package together.model;

import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
public class ReportDTO {
	
	private int report_num;
	private String member_email;
	private String report_member_email;
	private String report_reason;

}
