const mongoose = require('mongoose')

const plantSchema = new mongoose.Schema({
  commonName: {
    type: String,
    required: true
  },
  speciesName: {
    type: String,
    required: true
  },
  nickName: {
    type: String,
    required: true
  },
  waterReq: {
    type: String,
    required: true
  },
  sunReq: {
    type: String,
    required: true
  },
  soilReq: {
    type: String,
    required: true
  },
  owner: {
    type: mongoose.Schema.Types.ObjectId,
    ref: 'User',
    required: true
  }
}, {
  timestamps: true
})

module.exports = mongoose.model('Plant', plantSchema)
