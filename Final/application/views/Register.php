<?php
    require 'Header.php';
    verifyLoggedIn();
?>

    <div class="form-container">
        <form id="register-form" method="POST">
            <h2 class="login-form-title">Create an Account</h2>

            <fieldset>
                <div>
                    <div>
                        <label class="form-label" for="username">Username</label>
                        <input autofocus class="form-input-box" id="username"
                               name="username" placeholder="Enter your username here" type="text">
                    </div>
                    <div>
                        <label class="form-label" for="email">Email</label>
                        <input class="form-input-box" id="email" name="email"
                               placeholder="Enter your email here" type="text">
                    </div>
                    <div>
                        <label class="form-label" for="password">Password</label>
                        <div class="show-password">
                            <span id="password-view"><b>Show</b></span>
                        </div>
                        <input autocomplete="off" class="form-input-box" id="password" name="password"
                               placeholder="Enter your password here" type="password">
                    </div>
                    <div>
                        <label class="form-label" for="cPassword">Confirm Password</label>
                        <input autocomplete="off" class="form-input-box" id="cPassword" name="cPassword"
                               placeholder="Rewrite the password here" type="password">
                    </div>
                    <div>
                        <label class="form-label" for="phone">Phone Number</label>
                        <input class="form-input-box" id="phone" name="phone"
                               placeholder="Enter your phone number here" type="text">
                    </div>
                    <div>
                        <label>Gender</label>
                        <div class="radio-button" id="radio-button-box">
                            <input id="male" name="gender" type="radio" value="Male">
                            <label class="radio-label" for="male">Male</label>
                            <input id="female" name="gender" type="radio" value="Female">
                            <label class="radio-label" for="female">Female</label>
                        </div>
                    </div>
                </div>
            </fieldset>

            <div class="bottom">
                <div class="center-text">
                    <p id="prompt-message"></p>
                </div>
                <div class="center">
                    <input id="form-submit" type="submit" class="button" value="Register">
                </div>
                <div class="center-text bottom-text">
                    Already have an account? <a href="Login.php">Login</a>
                </div>
            </div>
        </form>
    </div>

    <script src="../../public/js/Logic.js"></script>
    <script src="../../public/js/RegistrationValidate.js"></script>

<?php include 'Footer.php' ?>