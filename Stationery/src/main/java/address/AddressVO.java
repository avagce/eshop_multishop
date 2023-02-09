//package address;
//
//import java.util.Map;
//
//// AddressVO 클래스 작성
//public class AddressVO {
//
//	private String mainAddress;  // 기본 주소 필드
//	private String subAddress;   // 상세 주소 필드
//	
//	public String getMainAddress() {
//		return mainAddress;
//	}
//	public String getSubAddress() {
//		return subAddress;
//	}
//	public void setMainAddress(String mainAddress) {
//		this.mainAddress = mainAddress;
//	}
//	public void setSubAddress(String subAddress) {
//		this.subAddress = subAddress;
//	}
//	
//	// 기본 주소가 비어있는지 검증
//	public void validateMain(Map<String, Boolean> errors) {
//		if(mainAddress == null || mainAddress.trim().isEmpty()) {
//			errors.put("main", Boolean.TRUE);
//		}
//	}
//	// 상세 주소가 비어있는지 검증
//	public void validateSub(Map<String, Boolean> errors) {
//		if(subAddress == null || subAddress.trim().isEmpty()) {
//			errors.put("sub", Boolean.TRUE);
//		}
//	}
//	
//}
