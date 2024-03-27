<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="header.jsp" %>

<link href="/resources/css/payment.css" rel='stylesheet'>
<script src="js/jquery-1.12.4.min.js"></script>
<script src="https://cdn.iamport.kr/v1/iamport.js"></script>
<script src="https://unpkg.com/axios/dist/axios.min.js"></script>

<script>
IMP.init('imp26677463'); // 객체 초기화(가맹점 식별코드)


function makeMerchant() {  // 주문번호 만들기
	const random = (length = 1) => {	// 랜덤문자
		  const chars = 'ABCDEFGHIJKLMNOPQRSTUVWXYZ';
		  let str = '';

		  for (let i = 0; i < length; i++) {
		    str += chars.charAt(Math.floor(Math.random() * chars.length));
		  }

		  return str;

	};
	var today = new Date();   
    var hours = today.getHours(); // 시
    var minutes = today.getMinutes();  // 분
    var seconds = today.getSeconds();  // 초
    var milliseconds = today.getMilliseconds();	// 밀리초
    var year = today.getFullYear();
    var month = ('0' + (today.getMonth() + 1)).slice(-2);
    var day = ('0' + today.getDate()).slice(-2);
    var makeMerchant = random() + "" + year + "" + month + "" + day + "-" + hours + "" +  minutes + "" + seconds + "" + milliseconds;
    
    return makeMerchant;
    console.log(makeMerchantUid);
}

var name = null;
var sup_name = null;

function support_name(supamount) {
	if(supamount == 2000) {
		sup_name = "小さな力";
	}else if(supamount == 5000) {
		sup_name = "少し大きい力";
	}else if(supamount == 10000) {
		sup_name = "大きい力";
	}else if(supamount == 50000) {
		sup_name = "とても大きい力";
	}
}

$(document).ready(function(){
	// 구매자 이름
	name = sup.last.value + sup.first.value;
});

function requestCardPay() {
	var supamount = parseInt(sup.amount.value); // 구매금액 
	console.log(supamount);
	support_name(supamount);
	var makeMerchantUid = makeMerchant(); // 주문번호
	var msg;
	IMP.request_pay({
		pg: "kcp",						// 결제대행사
		pay_method: "card",				// 결제방식(카드)
		merchant_uid: makeMerchantUid,  // 주문번호
		name: sup_name,					// 상품이름
		amount: supamount,              // 구매금액(숫자 타입)
		buyer_email: sup.mail.value,	// 구매자 이메일
		buyer_name: name,				// 구매자 이름
	}, function(rsp) { //collback
        if ( rsp.success ) {
            jQuery.ajax({
                url: "payment.do", 		
                type: 'POST',
                dataType: 'json',
                data: { // DB에 저장할 결제정보
                    imp_uid : rsp.imp_uid,			// 결제고유번호
                    merchant_uid: rsp.merchant_uid,	// 주문번호
					amount : supamount,				// 구매금액(숫자 타입)
					name : rsp.name,				// 구매금액(숫자 타입)
					eldd_mail : rsp.buyer_email,	// 구매자 이메일
					eldd_name : rsp.buyer_name		// 구매자 이름
                }
            }).done(function(data) {
                //[2] 서버에서 REST API로 결제정보확인 및 서비스루틴이 정상적인 경우
                if ( everythings_fine ) {
                    msg = '결제가 완료되었습니다.';
                    msg += '\n고유ID : ' + rsp.imp_uid;
                    msg += '\n상점 거래ID : ' + rsp.merchant_uid;
                    msg += '\결제 금액 : ' + rsp.amount;
                    msg += '\상품이름 : ' + rsp.name;
                    
                    alert(msg);
                } else {
                    //[3] 아직 제대로 결제가 되지 않았습니다.
                    //[4] 결제된 금액이 요청한 금액과 달라 결제를 자동취소처리하였습니다.
                }
            });
           alert("いつもありがとうございます!");
        } else {
            msg = '결제에 실패하였습니다.';
            msg += '에러내용 : ' + rsp.error_msg;
            alert(msg);
        }
    });
}
function requestTransPay() {
	var supamount = parseInt(sup.amount.value);
	console.log(supamount);
	support_name(supamount);
	var makeMerchantUid = makeMerchant();
	var msg;
    IMP.request_pay({
		pg: "kcp",
		pay_method: "trans",
		merchant_uid: makeMerchantUid,   // 주문번호.
		name: sup_name,
		amount: supamount,                         // 숫자 타입
		buyer_email: sup.mail.value,
		buyer_name: name,
    }, function(rsp) { //collback
        if ( rsp.success ) {
            jQuery.ajax({
                url: "payment.do", 
                type: 'POST',
                dataType: 'json',
                data: {
                    imp_uid : rsp.imp_uid,
                    merchant_uid: rsp.merchant_uid,
					amount : supamount,
					name : rsp.name,
					eldd_mail : rsp.buyer_email,
					eldd_name : rsp.buyer_name
                }
            }).done(function(data) {
                //[2] 서버에서 REST API로 결제정보확인 및 서비스루틴이 정상적인 경우
                if ( everythings_fine ) {
                    msg = '결제가 완료되었습니다.';
                    msg += '\n고유ID : ' + rsp.imp_uid;
                    msg += '\n상점 거래ID : ' + rsp.merchant_uid;
                    msg += '\결제 금액 : ' + rsp.amount;
                    msg += '\상품이름 : ' + rsp.name;
                    
                    alert(msg);
                } else {
                    //[3] 아직 제대로 결제가 되지 않았습니다.
                    //[4] 결제된 금액이 요청한 금액과 달라 결제를 자동취소처리하였습니다.
                }
            });
           alert("いつもありがとうございます!");
        } else {
            msg = '결제에 실패하였습니다.';
            msg += '에러내용 : ' + rsp.error_msg;
            alert(msg);
        }
    });
  }

function requestKakaoPay() {
	var supamount = parseInt(sup.amount.value);
	console.log(supamount);
	support_name(supamount);
	var makeMerchantUid = makeMerchant();
	var msg;
    IMP.request_pay({
		pg: "kakaopay",
		merchant_uid: makeMerchantUid,   // 주문번호.
		name: sup_name,
		amount: supamount,                         // 숫자 타입
		buyer_email: sup.mail.value,
		buyer_name: name,
	}, function(rsp) { //collback
        if ( rsp.success ) {
            jQuery.ajax({
                url: "payment.do", 
                type: 'POST',
                dataType: 'json',
                data: {
                    imp_uid : rsp.imp_uid,
                    merchant_uid: rsp.merchant_uid,
					amount : supamount,
					name : rsp.name,
					eldd_mail : rsp.buyer_email,
					eldd_name : rsp.buyer_name
                }
            }).done(function(data) {
                //[2] 서버에서 REST API로 결제정보확인 및 서비스루틴이 정상적인 경우
                if ( everythings_fine ) {
                    msg = '결제가 완료되었습니다.';
                    msg += '\n고유ID : ' + rsp.imp_uid;
                    msg += '\n상점 거래ID : ' + rsp.merchant_uid;
                    msg += '\결제 금액 : ' + rsp.amount;
                    msg += '\상품이름 : ' + rsp.name;
                    
                    alert(msg);
                } else {
                    //[3] 아직 제대로 결제가 되지 않았습니다.
                    //[4] 결제된 금액이 요청한 금액과 달라 결제를 자동취소처리하였습니다.
                }
            });
           alert("いつもありがとうございます!");
        } else {
            msg = '결제에 실패하였습니다.';
            msg += '에러내용 : ' + rsp.error_msg;
            alert(msg);
        }
    });
  }

function requestNaverPay() {
	var supamount = parseInt(sup.amount.value);
	console.log(supamount);
	support_name(supamount);
	var makeMerchantUid = makeMerchant();
	var msg;
    IMP.request_pay({
		pg: "kcp",
		pay_method: "naverpay",
		merchant_uid: makeMerchantUid,   // 주문번호.
		name: sup_name,
		amount: supamount,                         // 숫자 타입
		buyer_email: sup.mail.value,
		buyer_name: name,
	}, function(rsp) { //collback
        if ( rsp.success ) {
            jQuery.ajax({
                url: "payment.do", 
                type: 'POST',
                dataType: 'json',
                data: {
                    imp_uid : rsp.imp_uid,
                    merchant_uid: rsp.merchant_uid,
					amount : supamount,
					name : rsp.name,
					eldd_mail : rsp.buyer_email,
					eldd_name : rsp.buyer_name
                }
            }).done(function(data) {
                //[2] 서버에서 REST API로 결제정보확인 및 서비스루틴이 정상적인 경우
                if ( everythings_fine ) {
                    msg = '결제가 완료되었습니다.';
                    msg += '\n고유ID : ' + rsp.imp_uid;
                    msg += '\n상점 거래ID : ' + rsp.merchant_uid;
                    msg += '\결제 금액 : ' + rsp.amount;
                    msg += '\상품이름 : ' + rsp.name;
                    
                    alert(msg);
                } else {
                    //[3] 아직 제대로 결제가 되지 않았습니다.
                    //[4] 결제된 금액이 요청한 금액과 달라 결제를 자동취소처리하였습니다.
                }
            });
           alert("いつもありがとうございます!");
        } else {
            msg = '결제에 실패하였습니다.';
            msg += '에러내용 : ' + rsp.error_msg;
            alert(msg);
        }
    });
  }

function requestSamsungPay() {
	var supamount = parseInt(sup.amount.value);
	console.log(supamount);
	support_name(supamount);
	var makeMerchantUid = makeMerchant();
	var msg;
    IMP.request_pay({
		pg: "kcp",
		pay_method: "samsung",
		merchant_uid: makeMerchantUid,   // 주문번호.
		name: sup_name,
		amount: supamount,                         // 숫자 타입
		buyer_email: sup.mail.value,
		buyer_name: name,
	}, function(rsp) { //collback
        if ( rsp.success ) {
            jQuery.ajax({
                url: "payment.do", 
                type: 'POST',
                dataType: 'json',
                data: {
                    imp_uid : rsp.imp_uid,
                    merchant_uid: rsp.merchant_uid,
					amount : supamount,
					name : rsp.name,
					eldd_mail : rsp.buyer_email,
					eldd_name : rsp.buyer_name
                }
            }).done(function(data) {
                //[2] 서버에서 REST API로 결제정보확인 및 서비스루틴이 정상적인 경우
                if ( everythings_fine ) {
                    msg = '결제가 완료되었습니다.';
                    msg += '\n고유ID : ' + rsp.imp_uid;
                    msg += '\n상점 거래ID : ' + rsp.merchant_uid;
                    msg += '\결제 금액 : ' + rsp.amount;
                    msg += '\상품이름 : ' + rsp.name;
                    
                    alert(msg);
                } else {
                    //[3] 아직 제대로 결제가 되지 않았습니다.
                    //[4] 결제된 금액이 요청한 금액과 달라 결제를 자동취소처리하였습니다.
                }
            });
           alert("いつもありがとうございます!");
        } else {
            msg = '결제에 실패하였습니다.';
            msg += '에러내용 : ' + rsp.error_msg;
            alert(msg);
        }
    });
  }


function requestVbankPay() {
	var supamount = parseInt(sup.amount.value);
	console.log(supamount);
	support_name(supamount);
	var makeMerchantUid = makeMerchant();
	var msg;
    IMP.request_pay({
		pg: "kcp",
		pay_method: "vbank",
		merchant_uid: makeMerchantUid,   // 주문번호.
		name: sup_name,
		amount: supamount,                         // 숫자 타입
		buyer_email: sup.mail.value,
		buyer_name: name,
	}, function(rsp) { //collback
        if ( rsp.success ) {
            jQuery.ajax({
                url: "payment.do", 
                type: 'POST',
                dataType: 'json',
                data: {
                    imp_uid : rsp.imp_uid,
                    merchant_uid: rsp.merchant_uid,
					amount : supamount,
					name : rsp.name,
					eldd_mail : rsp.buyer_email,
					eldd_name : rsp.buyer_name
                }
            }).done(function(data) {
                //[2] 서버에서 REST API로 결제정보확인 및 서비스루틴이 정상적인 경우
                if ( everythings_fine ) {
                    msg = '결제가 완료되었습니다.';
                    msg += '\n고유ID : ' + rsp.imp_uid;
                    msg += '\n상점 거래ID : ' + rsp.merchant_uid;
                    msg += '\결제 금액 : ' + rsp.amount;
                    msg += '\상품이름 : ' + rsp.name;
                    
                    alert(msg);
                } else {
                    //[3] 아직 제대로 결제가 되지 않았습니다.
                    //[4] 결제된 금액이 요청한 금액과 달라 결제를 자동취소처리하였습니다.
                }
            });
           alert("いつもありがとうございます!");
        } else {
            msg = '결제에 실패하였습니다.';
            msg += '에러내용 : ' + rsp.error_msg;
            alert(msg);
        }
    });
  }

function requestPhonePay() {
	var supamount = parseInt(sup.amount.value);
	console.log(supamount);
	support_name(supamount);
	var makeMerchantUid = makeMerchant();
	var msg;
    IMP.request_pay({
		pg: "kcp",
		pay_method: "phone",
		merchant_uid: makeMerchantUid,   // 주문번호.
		name: sup_name,
		amount: supamount,                         // 숫자 타입
		buyer_email: sup.mail.value,
		buyer_name: name,
	}, function(rsp) { //collback
        if ( rsp.success ) {
            jQuery.ajax({
                url: "payment.do", 
                type: 'POST',
                dataType: 'json',
                data: {
                    imp_uid : rsp.imp_uid,
                    merchant_uid: rsp.merchant_uid,
					amount : supamount,
					name : rsp.name,
					eldd_mail : rsp.buyer_email,
					eldd_name : rsp.buyer_name
                }
            }).done(function(data) {
                //[2] 서버에서 REST API로 결제정보확인 및 서비스루틴이 정상적인 경우
                if ( everythings_fine ) {
                    msg = '결제가 완료되었습니다.';
                    msg += '\n고유ID : ' + rsp.imp_uid;
                    msg += '\n상점 거래ID : ' + rsp.merchant_uid;
                    msg += '\결제 금액 : ' + rsp.amount;
                    msg += '\상품이름 : ' + rsp.name;
                    
                    alert(msg);
                } else {
                    //[3] 아직 제대로 결제가 되지 않았습니다.
                    //[4] 결제된 금액이 요청한 금액과 달라 결제를 자동취소처리하였습니다.
                }
            });
           alert("いつもありがとうございます!");
        } else {
            msg = '결제에 실패하였습니다.';
            msg += '에러내용 : ' + rsp.error_msg;
            alert(msg);
        }
    });
  }

</script>

	<div class="container">
		<div class="title">
			<h1>利用券</h1>
		</div>
		<div class="util">
			<form name="util" id="util" method="post" action="#">
					<div class="col-lg-4 util-choose">
						<div class="btn-group btn-group-justified util-btn-group" role="group" aria-label="...">
							<div class="btn-group util-btn" role="group">
								<input type="radio" id="choose-btn1" class="choose-btn" name="util-name">
								<label for="choose-btn1">
									<span id="utilName">利用券の名前</span> <br>
									<span class="utilPrice" id="utilPrice">1000円</span><br>
									<span class="utilEx">뭐든 좋으니 이용권 설명 해주세요<br>부탁드릴게요<br>일단 내가 할거 같긴 한데<br>미래의 나한테 맡긴다.</span>
								</label>
								<%-- <button type="button" class="btn btn-default choose-btn" onClick="#">
									<span id="utilName">利用券の名前</span> <br>
									<span class="utilPrice" id="utilPrice">1000</span><span class="utilPrice">円</span><br>
									<span class="utilEx">뭐든 좋으니 이용권 설명 해주세요<br>부탁드릴게요<br>일단 내가 할거 같긴 한데<br>미래의 나한테 맡긴다.</span>
								</button>  --%>
							</div>
						</div>
					</div>
					<div class="col-lg-4 util-choose">
						<div class="btn-group btn-group-justified util-btn-group" role="group" aria-label="...">
							<div class="btn-group util-btn" role="group">
								<input type="radio" id="choose-btn2" class="choose-btn" name="util-name">
								<label for="choose-btn2">
									<span id="utilName">利用券の名前</span> <br>
									<span class="utilPrice" id="utilPrice">1000円</span><br>
									<span class="utilEx">뭐든 좋으니 이용권 설명 해주세요<br>부탁드릴게요<br>일단 내가 할거 같긴 한데<br>미래의 나한테 맡긴다.</span>
								</label>
								<%-- <button type="button" class="btn btn-default choose-btn" onClick="#">
									<span id="utilName">利用券の名前</span> <br>
									<span class="utilPrice" id="utilPrice">1000</span><span class="utilPrice">円</span><br>
									<span class="utilEx">뭐든 좋으니 이용권 설명 해주세요<br>부탁드릴게요<br>일단 내가 할거 같긴 한데<br>미래의 나한테 맡긴다.</span>
								</button>  --%>
							</div>
						</div>
					</div>
					<div class="col-lg-4 util-choose">
						<div class="btn-group btn-group-justified util-btn-group" role="group" aria-label="...">
							<div class="btn-group util-btn" role="group">
								<input type="radio" id="choose-btn3" class="choose-btn" name="util-name">
								<label for="choose-btn3">
									<span id="utilName">利用券の名前</span> <br>
									<span class="utilPrice" id="utilPrice">1000円</span><br>
									<span class="utilEx">뭐든 좋으니 이용권 설명 해주세요<br>부탁드릴게요<br>일단 내가 할거 같긴 한데<br>미래의 나한테 맡긴다.</span>
								</label>
								<%-- <button type="button" class="btn btn-default choose-btn" onClick="#">
									<span id="utilName">利用券の名前</span> <br>
									<span class="utilPrice" id="utilPrice">1000</span><span class="utilPrice">円</span><br>
									<span class="utilEx">뭐든 좋으니 이용권 설명 해주세요<br>부탁드릴게요<br>일단 내가 할거 같긴 한데<br>미래의 나한테 맡긴다.</span>
								</button>  --%>
							</div>
						</div>
					</div>
			</form>
		</div>
		<div class="payment">
			<button class="btn-pay" onclick="requestCardPay()">カード</button>
			<button class="btn-pay" onclick="requestTransPay()">振り込み</button>
			<button class="btn-pay" onclick="requestVbankPay()">仮想口座</button>
			<button class="btn-pay" onclick="requestPhonePay()">携帯少額決済</button><br>
			<img src="/resources/images/kakaopay.png" class="sup-pay" onclick="requestKakaoPay()">
			<img src="/resources/images/naverpay.png" class="sup-pay" onclick="requestNaverPay()">
			<img src="/resources/images//sspay.png" class="sup-pay" onclick="requestSamsungPay()">
		</div>
	</div>

<%@ include file="footer.jsp" %>