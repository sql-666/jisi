// pages/respects/respects.js
Page({

  /**
   * 页面的初始数据
   */
  data: {
    fav:true,
    list:[1,2.3]
  },

  /**
   * 生命周期函数--监听页面加载
   */
  onLoad: function (options) {

  },
  toFav:function(){
    var fav=this.data.fav ? false:true
    this.setData({
      fav:fav
    })
    var tip = this.data.fav ? '收藏' : '取消收藏'
    wx.showToast({
      title: tip+'成功',
    })
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

  toDetail:function(){
    wx.navigateTo({
      url: '../respectD/respectD?respect_id=1',
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
    if (res.from == 'menu') {
      return {
        title: 'xxx缅怀馆',
        image: '/static/cun.jpg',
        path: '/pages/search/search?id=1',
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