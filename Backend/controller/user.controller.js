const User = require("../model/user.model");

const utils = require("../lib/utils");

exports.registerUser = async function (req, res, next) {
  const { user_id, user_email, user_name, user_phone, user_password } =
    req.body;

  try {
    if (!user_id) {
      return res.status(200).json({
        code: 204,
        status: "No Content",
        Success: false,
        message: "Please enter a your id.",
      });
    } else if (!user_email) {
      return res.status(200).json({
        code: 204,
        status: "No Content",
        Success: false,
        message: "Please enter a your email.",
      });
    } else if (!user_name) {
      return res.status(200).json({
        code: 204,
        status: "No Content",
        Success: false,
        message: "Please enter a your user name.",
      });
    } else if (!user_phone) {
      return res.status(200).json({
        code: 204,
        status: "No Content",
        Success: false,
        message: "Please enter a your phone number.",
      });
    } else if (!validateEmail(user_email)) {
      return res.status(200).json({
        code: 406,
        success: false,
        status: "Not Acceptable",
        message: "Email is invalid, Please enter a valid email",
      });
    } else if (!validatePassword(user_password)) {
      return res.status(200).json({
        code: 406,
        success: false,
        status: "Not Acceptable",
        message:
          "Password has 8 characters, It must have one uppercase letter, lowercase letter, number and special character.",
      });
    } else {
      const userId = await User.findOne({ user_id });
      if (userId) {
        return res.status(200).json({
          code: 208,
          success: false,
          status: "Already Reported",
          message: "This id is already exists.",
        });
      }

      const userEmail = await User.findOne({ user_email });
      if (userEmail) {
        return res.status(200).json({
          code: 208,
          success: false,
          status: "Already Reported",
          message: "This email is already exists.",
        });
      }

      const userPhone = await User.findOne({ user_phone });
      if (userPhone) {
        return res.status(200).json({
          code: 208,
          success: false,
          status: "Already Reported",
          message: "This phone number is already exists.",
        });
      }

      const saltHash = utils.genPassword(user_password);

      const salt = saltHash.salt;
      const hash = saltHash.hash;

      const newUser = new User({
        user_id,
        user_email,
        user_name,
        user_phone,
        hash: hash,
        salt: salt,
        user_type: "student",
      });

      const tokenObject = utils.issueJWT(newUser);
      await newUser.save();

      return res.status(200).json({
        code: 201,
        status: "Created",
        Success: true,
        token: tokenObject.token,
        expiresIn: tokenObject.expires,
        sub: tokenObject.sub,
        UserDetails: newUser,
      });
    }
  } catch (error) {
    return res.status(500).json({
      code: 500,
      status: "Internal Server Error",
      Success: false,
      message: error.message,
    });
  }
};



function validateEmail(email) {
  const re =
    /^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$/;
  return re.test(email);
}

function validatePassword(password) {
  var re = /^(?=.*\d)(?=.*[!@#$%^&*])(?=.*[a-z])(?=.*[A-Z]).{8,}$/;
  return re.test(password);
}
