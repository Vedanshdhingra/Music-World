<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<html><head>
  <title>About Us | Music World</title>
  <link media="screen, projection, tv " href="css/html.css" type="text/css" rel="stylesheet">
  <link media="screen, projection, tv" href="css/layout.css" type="text/css" rel="stylesheet">
  <style>
    .about-section {
      margin-bottom: 40px;
    }
    .about-intro {
      font-size: 1.15em;
      color: #cbd5e1;
      line-height: 1.8;
      margin-bottom: 30px;
      text-align: left;
    }
    .about-intro strong {
      color: #38bdf8;
    }
    .about-grid {
      display: grid;
      grid-template-columns: repeat(auto-fit, minmax(200px, 1fr));
      gap: 20px;
      margin-bottom: 45px;
    }
    .about-card {
      background: rgba(30, 41, 59, 0.4);
      border: 1px solid rgba(255, 255, 255, 0.05);
      border-radius: 12px;
      padding: 24px;
      text-align: center;
      transition: all 0.3s ease;
    }
    .about-card:hover {
      transform: translateY(-5px);
      background: rgba(56, 189, 248, 0.06);
      border-color: rgba(56, 189, 248, 0.2);
      box-shadow: 0 8px 25px rgba(56, 189, 248, 0.15);
    }
    .about-card .icon {
      font-size: 2.2em;
      margin-bottom: 12px;
      display: inline-block;
    }
    .about-card h3 {
      font-size: 1.25em;
      margin: 0 0 8px 0;
      color: #ffffff;
      padding: 0;
      background: none;
      -webkit-text-fill-color: initial;
    }
    .about-card p {
      font-size: 0.9em;
      color: #94a3b8;
      margin: 0;
      padding: 0;
    }
    
    /* Elegant Success Alert */
    .success-alert {
      background: rgba(16, 185, 129, 0.1);
      border: 1px solid rgba(16, 185, 129, 0.3);
      color: #10b981;
      padding: 16px 20px;
      border-radius: 10px;
      margin-bottom: 30px;
      text-align: center;
      font-weight: 500;
      font-size: 1.05em;
      box-shadow: 0 4px 15px rgba(16, 185, 129, 0.1);
    }
    
    .form-wrapper {
      max-width: 600px;
      margin: 0 auto;
      background: rgba(30, 41, 59, 0.2);
      border: 1px solid rgba(255, 255, 255, 0.04);
      border-radius: 16px;
      padding: 30px;
    }
    
    #formID textarea {
      width: 250px;
      height: 100px;
      padding: 12px 16px;
      border-radius: 8px;
      border: 1px solid rgba(255, 255, 255, 0.08);
      background: rgba(15, 23, 42, 0.5);
      color: #ffffff;
      font-family: 'Inter', sans-serif;
      font-size: 0.95em;
      box-sizing: border-box;
      resize: vertical;
      outline: none;
      transition: all 0.2s ease;
    }
    #formID textarea:focus, #formID textarea:hover {
      border-color: #38bdf8;
      background: rgba(15, 23, 42, 0.7);
      box-shadow: 0 0 12px rgba(56, 189, 248, 0.2);
    }
    #formID select {
      width: 250px;
      padding: 10px 16px !important;
      border-radius: 8px !important;
      border: 1px solid rgba(255, 255, 255, 0.08) !important;
      background: rgba(15, 23, 42, 0.5) !important;
      color: #ffffff !important;
      outline: none;
      box-sizing: border-box !important;
      cursor: pointer;
    }
    #formID select:focus, #formID select:hover {
      border-color: #38bdf8 !important;
      box-shadow: 0 0 12px rgba(56, 189, 248, 0.2) !important;
    }
  </style>
</head><body>
<div id="content">
<%@ include file="menu/header.jsp" %>
  <%@ include file="menu/amainmenu.jsp" %>
  <div id="page">
	<%@ include file="menu/sidemenu.jsp" %>	
    <div class="width75 floatRight">
      <div class="gradient">
      
        <div class="about-section">
          <h1>About Music World</h1>
          <p class="about-intro">
            Welcome to <strong>Music World</strong>, your ultimate premium destination for discovering and downloading high-quality tracks. 
            We are dedicated to bridging the gap between music enthusiasts and pristine studio-grade audio. Whether you are looking for 
            the latest Bollywood chartbusters or international Pop anthems, our curated catalogs offer absolute auditory perfection.
          </p>
          
          <div class="about-grid">
            <div class="about-card">
              <span class="icon">🎵</span>
              <h3>150+ Songs</h3>
              <p>Fully updated catalogue of Bollywood and Pop tracks.</p>
            </div>
            <div class="about-card">
              <span class="icon">🎧</span>
              <h3>320kbps Audio</h3>
              <p>Premium studio quality MP3 and media assets.</p>
            </div>
            <div class="about-card">
              <span class="icon">⚡</span>
              <h3>Fast Downloads</h3>
              <p>High speed direct servers with zero delays.</p>
            </div>
            <div class="about-card">
              <span class="icon">💎</span>
              <h3>Ad-Free UI</h3>
              <p>Sleek Spotify-inspired user interface experience.</p>
            </div>
          </div>
        </div>

        <hr style="border: 0; height: 1px; background: rgba(255,255,255,0.08); margin: 40px 0;">

        <div>
          <h2 style="text-align: center; margin-bottom: 20px;">Send Your Feedback Here</h2>
          
          <%
            String msg = request.getParameter("msg");
            if (msg != null && msg.equals("success")) {
              out.println("<div class='success-alert'>✨ Thank you! Your feedback has been recorded successfully. We appreciate your support!</div>");
            }
          %>
          
          <div class="form-wrapper">
            <form id="formID" method="get" action="about.jsp">
              <input type="hidden" name="msg" value="success">
              <table width="100%" border="0">
                <tr>
                  <td align="right" width="40%">Your Name:</td>
                  <td align="left" width="60%">
                    <input type="text" name="name" id="name" required placeholder="Enter your name">
                  </td>
                </tr>
                <tr>
                  <td align="right">Email Address:</td>
                  <td align="left">
                    <input type="text" name="email" id="email" required placeholder="Enter your email">
                  </td>
                </tr>
                <tr>
                  <td align="right">Streaming Quality:</td>
                  <td align="left">
                    <select name="rating" id="rating">
                      <option value="5">⭐⭐⭐⭐⭐ Excellent</option>
                      <option value="4">⭐⭐⭐⭐ Very Good</option>
                      <option value="3">⭐⭐⭐ Good</option>
                      <option value="2">⭐⭐ Fair</option>
                      <option value="1">⭐ Poor</option>
                    </select>
                  </td>
                </tr>
                <tr>
                  <td align="right" style="vertical-align: top; padding-top: 10px;">Message:</td>
                  <td align="left">
                    <textarea name="feedback" id="feedback" required placeholder="Type your feedback message..."></textarea>
                  </td>
                </tr>
                <tr style="margin-bottom: 0;">
                  <td colspan="2" align="center" style="padding-top: 10px;">
                    <input class="submit" type="submit" value="Send Feedback"/>
                  </td>
                </tr>
              </table>
            </form>
          </div>
        </div>

      </div>
    </div>
  </div>
</div>
<%@ include file="menu/footer.jsp" %>
</div>
</body></html>