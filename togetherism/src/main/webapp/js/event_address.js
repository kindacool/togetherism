var geocoder = new kakao.maps.services.Geocoder();

$("#address").click(function(){
    new daum.Postcode({
        oncomplete: function(data) {
            $("#address").val(data.address);
            $("#address").prop("readonly",true);
            $("input[name=place]").val(data.sido);
            var juso =  $("#address").val();
        	geocoder.addressSearch(juso, callback);  
        }
    }).open()
});

var callback = function(result, status) {
	if (status === kakao.maps.services.Status.OK) {
		$("input[name=lng]").val(result[0].x);
		$("input[name=lat]").val(result[0].y);
	}
};