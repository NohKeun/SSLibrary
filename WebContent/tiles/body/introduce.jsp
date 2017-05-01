<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR"><title>간단한 지도 표시하기</title>
      <script type="text/javascript" src="https://openapi.map.naver.com/openapi/v3/maps.js?clientId=040b_DXkhVy9mFiBLsJg"></script>
  </head>
  <body>
    <div id="map" align="center" style="width:100%;height:300px;"></div>
    <script>
      var map = new naver.maps.Map('map', {center: new naver.maps.LatLng(37.3595704, 127.105399)});
    </script>
  </body>
</html>