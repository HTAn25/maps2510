<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8">
  <title>Survey Result</title>
  <style>
    body { font-family: Arial, sans-serif; margin: 0; padding: 0; font-size: 14px; }
    .container {
      max-width: 600px;
      margin: 40px auto;
      padding: 20px 30px;
      background: #fff;
      border: 1px solid #ccc;
      border-radius: 8px;
      box-shadow: 0 2px 6px rgba(0,0,0,0.2);
    }
    .logo { text-align: center; margin-bottom: 15px; }
    h2 { color: green; text-align: center; margin-bottom: 20px; }
    p { margin: 5px 0; }
    .back { text-align: center; margin-top: 20px; }
  </style>
</head>
<body>
  <div class="container">
    <!-- Logo Murach -->
    <div class="logo">
      <img src="${pageContext.request.contextPath}/images/murach_logo.jpg" alt="Murach Logo" width="100">
    </div>

    <h2>Thank you for filling out the survey!</h2>
    <p><b>Name:</b> ${firstName} ${lastName}</p>
    <p><b>Email:</b> ${email}</p>
    <p><b>Birth Date:</b> ${birthDate}</p>
    <p><b>Source:</b> ${source}</p>
    <p><b>Announcements:</b>
      <c:forEach var="a" items="${announcements}">
        ${a}<br>
      </c:forEach>
    </p>
    <p><b>Contact by:</b> ${contact}</p>

    <div class="back">
      <a href="${pageContext.request.contextPath}/index.jsp">Back to survey</a>
    </div>
  </div>
</body>
</html>
