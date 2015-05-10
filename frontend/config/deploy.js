module.exports = {
  production: {
    store: {
      type: "S3",
      accessKeyId: process.env['S3_KEY'],
      secretAccessKey: process.env['S3_SECRET'],
      bucket: "decisionhole.com",
    },
    assets: {
      accessKeyId: process.env['S3_KEY'],
      secretAccessKey: process.env['S3_SECRET'],
      bucket: 'decisionhole-assets'
    }
  }
};
