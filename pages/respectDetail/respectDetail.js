// pages/respectDetail/respectDetail.js
const app = getApp()
var that
Page({

  /**
   * 页面的初始数据
   */
  data: {
    imgGroup:['1','2','3']

  },

  /**
   * 生命周期函数--监听页面加载
   */
  onLoad: function (options) {

  },
  addnote:function(){

  },

  showModal: function (e) {
    console.log('333')
      var showModalStatus = e.currentTarget.dataset.statu == 'open' ? true : false;
      app.showModal(this);
      this.setData({
        showModalStatus: showModalStatus,
      })
  },
  addMessage:function(e){
    console.log(e.detail.value)
  },
  confirm:function(e){
    var showModalStatus = e.currentTarget.dataset.statu == 'open' ? true : false;
    this.setData({
      showModalStatus: showModalStatus,
    })
    var data={}

  },

  /**
   * 生命周期函数--监听页面初次渲染完成
   */
  onReady: function () {

  },

  /**
   * 生命周期函数--监听页面显示
   */
  onShow: function () {

  },

  /**
   * 生命周期函数--监听页面隐藏
   */
  onHide: function () {

  },

  /**
   * 生命周期函数--监听页面卸载
   */
  onUnload: function () {

  },

  /**
   * 页面相关事件处理函数--监听用户下拉动作
   */
  onPullDownRefresh: function () {

  },

  /**
   * 页面上拉触底事件的处理函数
   */
  onReachBottom: function () {

  },

  /**
   * 用户点击右上角分享
   */
  onShareAppMessage: function () {

  }
})