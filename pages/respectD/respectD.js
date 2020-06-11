// pages/respectD/respectD.js
var that
Page({

  /**
   * 页面的初始数据
   */
  data: {
    txtlist: [
      '上香',
      '献鲜花',
      '点蜡烛',
      '烧纸钱'
    ],
    windowHeight:600

  },

  /**
   * 生命周期函数--监听页面加载
   */
  onLoad: function (options) {

  },

  homePage:function(){
    wx.navigateTo({
      url: '../index/index',
    })
  },

  /**
   * 生命周期函数--监听页面初次渲染完成
   */
  onReady: function () {
    that = this
    that.systemInfo = wx.getSystemInfoSync();
    that.setData({
      windowHeight: that.systemInfo.windowHeight,
      windowWidth: that.systemInfo.windowWidth
    })
  },

  /**
   * 生命周期函数--监听页面显示
   */
  onShow: function () {

  },
  tocontribution:function(e){
    var type=e.currentTarget.dataset.type
    wx.showLoading({
      title: '正在' + type,
    })

    setTimeout(function(){
      wx.hideToast()
      wx.showToast({
        title: '成功' + type
      })
    },1500)
    
  },
  share:function(){
    wx.updateShareMenu({
      withShareTicket: true,
      success() { }
    })
  },
  toHome:function(){
    wx.switchTab({
      url: '../index/index',
    })
  },

  toRespectDetail:function(){
    wx.navigateTo({
      url: '../respectDetail/respectDetail',
    })
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
  onShareAppMessage: function (res) {
    that = this
    if (res.from == 'button') {
      return {
        title: '祭奠李文亮',
        image: '',
        path: '/pages/respectD/respectD',
        success: function (res) {
          // 转发成功
          console.log("转发成功")
        },
        fail: function (res) {
          console.log("转发失败")
        }
      }
    } 
  
  }
})