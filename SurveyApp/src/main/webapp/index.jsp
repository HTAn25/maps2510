<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8">
  <title>Survey</title>
  <style>
    body { 
      background-color: #fff8dc; 
      font-family: Arial, sans-serif; 
      margin: 0; padding: 0; font-size: 14px;
    }
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
    h1 { color: red; text-align: center; font-size: 20px; margin-bottom: 10px; }
    h3 { color: red; margin-top: 20px; margin-bottom: 8px; font-size: 16px; }
    table { width: 100%; border-collapse: collapse; }
    td { padding: 4px 8px; font-size: 14px; }
    input[type="text"], input[type="email"], input[type="date"], select {
      width: 100%;
      padding: 4px;
      font-size: 14px;
    }
    .submit { margin-top: 15px; text-align: center; }
    .submit input {
      padding: 6px 15px;
      font-size: 14px;
      background: red;
      color: white;
      border: none;
      border-radius: 4px;
      cursor: pointer;
    }
    .submit input:hover { background: darkred; }
  </style>
</head>
<body>
  <div class="container">
    <!-- Logo Murach -->
    <div class="logo">
      <img src="${pageContext.request.contextPath}/images/murach_logo.jpg" alt="Murach Logo" width="100">
    </div>

    <h1>Survey</h1>
    <p>If you have a moment, we'd appreciate it if you would fill out this survey.</p>
    
    <form action="survey" method="post">
      <h3>Your information:</h3>
      <table>
        <tr>
          <td>First Name:</td>
          <td><input type="text" name="firstName"></td>
        </tr>
        <tr>
          <td>Last Name:</td>
          <td><input type="text" name="lastName"></td>
        </tr>
        <tr>
          <td>Email:</td>
          <td><input type="email" name="email"></td>
        </tr>
        <tr>
          <td>Birth Date:</td>
          <td><input type="date" name="birthDate"></td>
        </tr>
      </table>
      
      <h3>How did you hear about us?</h3>
      <label><input type="radio" name="source" value="Social Media"> Social Media</label><br>
      <label><input type="radio" name="source" value="Search engine"> Search engine</label><br>
      <label><input type="radio" name="source" value="Word of mouth"> Word of mouth</label><br>
      <label><input type="radio" name="source" value="Other"> Other</label><br>
      
      <h3>Would you like to receive announcements about new CDs and special offers?</h3>
      <label><input type="checkbox" name="announcements" value="Yes, I'd like that."> YES, I'd like that.</label><br>
      <label><input type="checkbox" name="announcements" value="Yes, email updates."> YES, please send me email announcements.</label><br>
      
      <h3>Please contact me by:</h3>
      <select name="contact">
        <option>Email or postal mail</option>
        <option>Email only</option>
        <option>Postal mail only</option>
      </select>
      
      <div class="submit">
        <input type="submit" value="Submit">
      </div>
    </form>
  </div>
</body>
</html>
