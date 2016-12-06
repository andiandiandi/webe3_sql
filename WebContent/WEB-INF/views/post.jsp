<%@page import="java.util.Date"%>
<!DOCTYPE html>
<html>
  
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <script type="text/javascript" src="http://cdnjs.cloudflare.com/ajax/libs/jquery/2.0.3/jquery.min.js"></script>
    <script type="text/javascript" src="http://netdna.bootstrapcdn.com/bootstrap/3.3.4/js/bootstrap.min.js"></script>
    <link href="http://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.3.0/css/font-awesome.min.css"
    rel="stylesheet" type="text/css">
    <link href="http://pingendo.github.io/pingendo-bootstrap/themes/default/bootstrap.css"
    rel="stylesheet" type="text/css">
  </head>
  
  <body>
    <div class="section">
      <div class="container">
        <div class="row">
          <div class="col-md-12">
            <div class="section">
              <div class="container">
                <div class="row">
                  <div class="col-md-12">
                    <h1>Submit a Post</h1>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
    <div class="section">
      <div class="container">
        <div class="row">
          <div class="col-md-12">
            <div class="section">
              <div class="container">
                <div class="row">
                  <div class="col-md-12">
                    <form role="form" action="/WebE/post" method="post">
                      <div class="form-group">
                      <label style="display:block">Name:</label>
						<input type="text" name="firstName" style="width:500px;height:20px;">
                      </div>
                      <div class="form-group">
                      <label style="display:block">Surname:</label>
						<input type="text" name="surname" style="width:500px;height:20px;">
                      </div>
                      <div class="form-group">
                      <label style="display:block">Title:</label>
						<input type="text" name="title" style="width:500px;height:20px;">
                      </div>
                      <div class="form-group">
                        <label style="display:block">Content you want to post:</label>
						<textarea type="text" name="textContent" style="width:500px;height:50px;resize:none;"></textarea>
                      </div>
                      <button type="submit" class="btn btn-default">Submit</button>
                    </form>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
  </body>
</html>