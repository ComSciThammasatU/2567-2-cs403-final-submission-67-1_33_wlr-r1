const express = require('express');
const router = express.Router();
const { sendEmail } = require('../email/emailService');

router.post('/sendEmail', async (req, res) => {
  const mailOptions = {
    from: `"Dormitory Admin" <test@gmail.com>`,
    to: 'test@gmail.com',
    subject: 'test suject',
    html: '<p style="color:black;">test msg</p>',
  };

  try {
    const info = await sendEmail(mailOptions);
    res.status(200).send('Email sent: ' + info.response);
  } catch (err) {
    console.error('Email error:', err);
    res.status(500).send('Failed to send email.');
  }
});

module.exports = router;

