package  work.iamport;

import java.util.Date;

import org.codehaus.jackson.annotate.JsonIgnoreProperties;
import org.codehaus.jackson.annotate.JsonProperty;

import lombok.Data;

@JsonIgnoreProperties(ignoreUnknown = true)
@Data
public class PaymentVO {
	
	
	String imp_uid;
	
	String merchant_uid;
	
	int paid_amount;
	
	String apply_num;
	
	Date paid_at;
	
	
	@Override
	public String toString() {
		return "PaymentVO [imp_uid=" + imp_uid + ", merchant_uid=" + merchant_uid + ", paid_amount=" + paid_amount
				+ ", apply_num=" + apply_num + ", paid_at=" + paid_at + "]";
	}
	
	
	

}
